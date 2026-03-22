json.extract! patient, :id, :age, :gender, :education_level, :medical_history, :diet, :current_treatment, :created_at, :updated_at
json.url patient_url(patient, format: :json)
