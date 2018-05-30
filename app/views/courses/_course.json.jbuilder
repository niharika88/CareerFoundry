json.extract! course, :id, :title, :url, :author, :next_start, :next_start_formatted, :name_slug, :created_at, :updated_at
json.url course_url(course, format: :json)
