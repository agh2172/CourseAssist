class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.integer :class
      t.string :school
      t.string :major
      t.string :minor
      t.string :uni

      t.timestamps
    end
  end
end
