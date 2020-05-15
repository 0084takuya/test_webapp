json.extract! pcr_inspection, :id, :subject_id, :clinic_id, :result, :remarks, :created_at, :updated_at,:testday
json.url pcr_inspection_url(pcr_inspection, format: :json)
