class AddUniToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column(:students, :uni, :string)
  end
end
