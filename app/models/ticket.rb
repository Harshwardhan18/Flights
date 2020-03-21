class Ticket < ApplicationRecord
    before_save :generate_ticket
    belongs_to :passenger, dependent: :destroy
    belongs_to :trip
    accepts_nested_attributes_for :passenger, allow_destroy: true

    def generate_ticket
        self.pnr = ""
    end
end
