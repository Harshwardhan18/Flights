class Aeroplane < ApplicationRecord
    has_many :passengers, through: :tickets, dependent: :destroy
    has_many :trips, dependent: :destroy
    validates :name, :model, :e_fare,:b_fare, :f_fare, :e_row,:b_row,:f_row,:e_col,:b_col,:f_col,presence: true
end
