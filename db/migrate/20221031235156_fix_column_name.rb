class FixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :users, :class, :year
  end
end
