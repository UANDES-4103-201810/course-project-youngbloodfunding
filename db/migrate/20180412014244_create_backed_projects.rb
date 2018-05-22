class CreateBackedProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :backed_projects do |t|
      t.references :user
      t.references :project
      t.integer :amount

      t.timestamps
    end
  end
end
