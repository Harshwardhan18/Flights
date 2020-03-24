class AddPriceInTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :b_fare, :decimal
    add_column :trips, :e_fare, :decimal
    add_column :trips, :f_fare, :decimal
    add_column :trips, :time_of_dep, :datetime    
  end
end
