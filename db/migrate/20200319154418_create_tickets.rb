class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :source
      t.string :destination
      t.date :date_of_journey
      t.string :seat_class

      t.timestamps
    end
  end
end
