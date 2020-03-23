class Ticket < ApplicationRecord
    before_save :generate_ticket
    belongs_to :passenger, dependent: :destroy
    belongs_to :trip
    accepts_nested_attributes_for :passenger, allow_destroy: true

    def generate_ticket
        split_seat = seat_number.split('.')
        self.seat_class = split_seat[0]
        self.seat_number = split_seat[1]

        if self.seat_class == 'Business'
            self.total_cost = trip.aeroplane.b_fare + trip.b_fare
        elsif self.seat_class == 'Premium Economy'
            self.total_cost = trip.aeroplane.f_fare + trip.f_fare
        else
            self.total_cost = trip.aeroplane.e_fare + trip.e_fare    
        end
    end
end
