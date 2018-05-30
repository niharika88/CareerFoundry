class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :url
      t.string :author
      t.string :next_start
      t.string :next_start_formatted
      t.string :name_slug

      t.timestamps null: false
    end
  end
end
