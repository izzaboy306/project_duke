json.extract! customers_status, :id, :created_at, :updated_at
json.url customers_status_url(customers_status, format: :json)