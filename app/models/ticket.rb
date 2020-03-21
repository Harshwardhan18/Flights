class Ticket < ApplicationRecord
    before_save :generate_ticket
    belongs_to :passenger, dependent: :destroy
    belongs_to :trip
    accepts_nested_attributes_for :passenger, allow_destroy: true

    def generate_ticket
        split_seat = seat_number.split('.');
        self.seat_class = split_seat[0]
        self.seat_number = split_seat[1]

        if self.seat_class == 'Business'
            
        elsif self.seat_class == 'Premium Economy'
        
        else
            
        end
    end
end
