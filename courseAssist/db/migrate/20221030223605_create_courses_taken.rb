class CreateCoursesTaken < ActiveRecord::Migration[7.0]
  def change
    create_table :courses_takens do |t|
      t.string :uni
      t.string :courseID
      t.string :semester
      t.integer :year
      t.timestamps
    end
  end
end
