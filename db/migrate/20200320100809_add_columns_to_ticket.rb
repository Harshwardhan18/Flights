class AddColumnsToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :seat_number, :string
    add_column :tickets, :total_cost, :decimal
    add_column :tickets, :pnr, :string
  end
end
