# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 courses = HTTParty.get "https://careerfoundry.com/en/api/courses?json"
    courses_data = {}
    courses_output = []
    courses["courses"].each do |x|
    courses_data["name_slug"] = x[0]
    courses_data["title"] = x[1]["title"]
    courses_data["url"]  = x[1]["url"]
    courses_data["author"] = x[1]["author"]
    courses_data["next_start"] = x[1]["next_start"]
    courses_data["next_start_formatted"] = x[1]["next_start_formatted"]
    courses_output << courses_data
    Course.create(courses_output)
  end