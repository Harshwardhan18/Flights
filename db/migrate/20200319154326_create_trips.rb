class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :source
      t.string :destination
      t.datetime :date_of_dep
      t.datetime :date_of_arr
      t.references :aeroplane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
