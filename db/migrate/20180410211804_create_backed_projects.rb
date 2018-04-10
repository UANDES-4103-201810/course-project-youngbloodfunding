class CreateBackedProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :backed_projects do |t|
      t.integer :backer_id
      t.integer :project_id

      t.timestamps
    end
  end
end
