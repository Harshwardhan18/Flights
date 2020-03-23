class Aeroplane < ApplicationRecord
    has_many :passengers, through: :tickets, dependent: :destroy
    has_many :trips, dependent: :destroy
end
