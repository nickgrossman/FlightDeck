class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :status
      t.string :emotion

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
