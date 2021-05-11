json.extract! task, :id, :appointed, :priority, :title, :category, :status, :memo, :created_at, :updated_at
json.url task_url(task, format: :json)
