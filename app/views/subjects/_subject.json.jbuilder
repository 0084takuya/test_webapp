json.extract! subject, :id, :name, :gender, :birthday, :address, :created_at, :updated_at
json.url subject_url(subject, format: :json)
