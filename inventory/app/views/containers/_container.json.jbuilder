json.extract! container, :id, :quantity, :location, :container_type_id, :format_type, :format_id, :created_at, :updated_at
json.url container_url(container, format: :json)
