class RemoveMoodFromProjects < ActiveRecord::Migration
  def self.up
    remove_column :projects, :mood
  end

  def self.down
    add_column :projects, :mood
  end
end
