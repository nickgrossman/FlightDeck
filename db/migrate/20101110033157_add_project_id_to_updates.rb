class AddProjectIdToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :project_id, :int
  end

  def self.down
    remove_column :updates, :project_id
  end
end
