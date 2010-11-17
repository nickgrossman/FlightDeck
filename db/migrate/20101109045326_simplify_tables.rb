class SimplifyTables < ActiveRecord::Migration
  def self.up
      remove_column :projects, :status 
      remove_column :projects, :emotion
  end

  def self.down
      add_column :projects, :status, :text
      add_column :projects, :emotion, :string
  end
end
