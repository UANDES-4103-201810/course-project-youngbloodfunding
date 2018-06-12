class CreateBackedProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :backed_projects do |t|
      t.references :user
      t.references :project
      t.references :promise
      t.references :bank_account
      t.integer :amount

      t.timestamps
    end
  end
end
