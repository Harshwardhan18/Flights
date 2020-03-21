class AddPasengerToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :passenger, foreign_key: true
    add_reference :tickets, :trip, foreign_key: true
  end
end
