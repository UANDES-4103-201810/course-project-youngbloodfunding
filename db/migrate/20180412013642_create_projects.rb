class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :video
      t.string :images
      t.string :email
      t.date :project_date
      t.integer :goal_amount
      t.references :user

      t.timestamps
    end
  end
end
