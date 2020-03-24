class Passenger < ApplicationRecord
  belongs_to :user
  has_many :tickets
  has_many :trips, through: :tickets
  validates :name,:age,:gender, presence: true
end
