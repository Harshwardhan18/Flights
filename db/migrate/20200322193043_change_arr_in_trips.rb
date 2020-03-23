class ChangeArrInTrips < ActiveRecord::Migration[6.0]
  def change
    rename_column :trips, :date_of_arr, :time_of_arr
  end
end
