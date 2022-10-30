class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :courseID
      t.string :prof
      t.text :preReqs
      t.text :description
      t.text :reviews
      t.integer :currentlyOffered
      t.timestamps
    end
  end
end
