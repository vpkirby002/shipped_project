json.extract! job, :id, :description, :origin, :location, :destination, :container, :cost, :created_at, :updated_at
json.url job_url(job, format: :json)
