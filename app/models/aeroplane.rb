class Aeroplane < ApplicationRecord
    before_save :generate_seats
    has_many :passengers, through: :tickets, dependent: :destroy
    has_many :trips, dependent: :destroy
    validates :name, :model, :e_fare,:b_fare, :f_fare, :e_row,:b_row,:f_row,:e_col,:b_col,:f_col,presence: true
    validates :e_col, :b_col, :f_col, numericality: { less_than_or_equal_to: 6,  only_integer: true }

    def generate_seats
        self.total_seats = e_col*e_row + b_row*b_col + f_row*f_col
    end
end
