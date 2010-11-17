class AddMoodToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :mood, :string
  end

  def self.down
    remove_column :updates, :mood
  end
end
