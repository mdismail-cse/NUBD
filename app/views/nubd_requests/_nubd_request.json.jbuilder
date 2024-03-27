json.extract! nubd_request, :id, :name, :email, :mobile, :department_id, :subject_id, :session_year, :is_active, :txt_id, :created_at, :updated_at
json.url nubd_request_url(nubd_request, format: :json)
