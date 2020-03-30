class AddColToAeroplanes < ActiveRecord::Migration[6.0]
  def change
    add_column :aeroplanes, :total_seats, :integer
    add_column :trips, :trip_charge, :integer
  end
end
