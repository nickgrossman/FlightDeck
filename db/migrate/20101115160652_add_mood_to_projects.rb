class AddMoodToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :mood, :string
  end

  def self.down
    remove_column :projects, :mood
  end
end
