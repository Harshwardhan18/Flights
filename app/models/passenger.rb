class Passenger < ApplicationRecord
  belongs_to :user
  belongs_to :aeroplane
  has_many :tickets
  has_many :trips, through: :tickets
end
