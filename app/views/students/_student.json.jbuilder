json.extract! student, :id, :first_name, :middle_name, :sur_name, :s_location, :standard_id, :created_at, :updated_at
json.url student_url(student, format: :json)
