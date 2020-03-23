class ChangeArrTypeInTrips < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :time_of_arr, :time
  end
end
