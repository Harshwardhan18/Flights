class Trip < ApplicationRecord
  before_save :generate_charge
  belongs_to :aeroplane
  has_many :tickets, dependent: :destroy
  has_many :passengers, through: :tickets, dependent: :destroy
  validates :source,:destination, :date_of_dep,:time_of_arr,:time_of_dep,:b_fare,:e_fare,:f_fare, presence: true

  def generate_charge
    self.trip_charge = (aeroplane.e_col*aeroplane.e_row)*e_fare + (aeroplane.b_col*aeroplane.b_row)*b_fare + (aeroplane.f_col*aeroplane.f_row)*f_fare
  end
end
