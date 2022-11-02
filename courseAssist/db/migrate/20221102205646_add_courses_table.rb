class AddCoursesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :addcourses do |t|
      t.string :uni
      t.string :course
      t.string :semester
      t.integer :year
      t.timestamps
    end
  end
end
