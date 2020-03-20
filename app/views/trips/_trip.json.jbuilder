json.extract! trip, :id, :source, :destination, :date_of_dep, :date_of_arr, :aeroplane_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
