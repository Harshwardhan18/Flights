class CreateAeroplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.string :model
      t.decimal :e_fare
      t.decimal :b_fare
      t.decimal :f_fare
      t.integer :e_row
      t.integer :e_col
      t.integer :b_row
      t.integer :b_col
      t.integer :f_row
      t.integer :f_col

      t.timestamps
    end
  end
end
