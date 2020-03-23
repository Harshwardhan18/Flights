class ChangeDepInTrips < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :date_of_dep, :date
    change_column :trips, :date_of_arr, :date
  end
end
