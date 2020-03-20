class Aeroplane < ApplicationRecord
    has_many :passengers, through: :tickets
    has_many :trips
end
