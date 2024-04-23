json.extract! find_table, :id, :first_name, :last_name, :table_number, :related_names, :created_at, :updated_at
json.url find_table_url(find_table, format: :json)
