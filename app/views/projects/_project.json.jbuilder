json.extract! project, :id, :name, :description, :video, :images, :email, :project_date, :goal_amount, :created_at, :updated_at
json.url project_url(project, format: :json)
