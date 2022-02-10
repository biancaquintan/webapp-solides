json.extract! record, :id, :checkin, :checkout, :lunch_start, :lunch_end, :observations, :user_id, :created_at, :updated_at
json.url record_url(record, format: :json)
