class Trip < ApplicationRecord
  belongs_to :aeroplane
  has_many :tickets, dependent: :destroy
  has_many :passengers, through: :tickets, dependent: :destroy
  validates :source,:destination, :date_of_dep,:time_of_arr,:time_of_dep,:b_fare,:e_fare,:f_fare, presence: true
end
