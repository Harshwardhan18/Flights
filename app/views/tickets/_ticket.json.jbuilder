json.extract! ticket, :id, :source, :destination, :date_of_journey, :seat_class, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
