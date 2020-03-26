class Ticket < ApplicationRecord
    before_save :generate_ticket
    belongs_to :passenger, dependent: :destroy
    belongs_to :trip
    accepts_nested_attributes_for :passenger, allow_destroy: true
    validates :seat_number,presence: true
 
    def generate_ticket
        split_seat = seat_number.split('.')
        self.seat_class = split_seat[0]
        self.seat_number = split_seat[1]
        current_trip = Trip.find_by(id: "#{trip_id}")
        self.pnr = "S"+"#{seat_number}" + "#{seat_class[0..1].upcase}" + "T" + "#{trip_id}" + "P"
        self.date_of_journey = current_trip.date_of_dep
        self.source = current_trip.source
        self.destination = current_trip.destination
        current_plane = current_trip.aeroplane
        total_seats = (current_plane.b_row*current_plane.b_col) + (current_plane.f_row*current_plane.f_col) + (current_plane.e_row*current_plane.e_col)
        if self.seat_class == 'Business'
            self.total_cost = trip.aeroplane.b_fare + trip.b_fare
        elsif self.seat_class == 'Premium Economy'
            self.total_cost = trip.aeroplane.f_fare + trip.f_fare
        else
            self.total_cost = trip.aeroplane.e_fare + trip.e_fare    
        end
    end
end
