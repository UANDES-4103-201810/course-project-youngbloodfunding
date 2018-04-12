class CreateCreatedProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :created_projects do |t|
      t.string :creator_id
      t.string :project_id

      t.timestamps
    end
  end
end
