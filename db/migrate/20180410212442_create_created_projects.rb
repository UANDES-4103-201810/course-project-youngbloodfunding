class CreateCreatedProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :created_projects do |t|
      t.integer :creator_id
      t.integer :project_id

      t.timestamps
    end
  end
end
