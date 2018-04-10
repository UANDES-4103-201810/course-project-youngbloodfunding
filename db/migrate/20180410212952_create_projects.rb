class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.array :video
      t.string :images
      t.string :array
      t.string :project_date
      t.string :date
      t.string :email
      t.string :string
      t.string :goal
      t.string :integer
      t.string :package_prices
      t.string :array
      t.string :delivery_dates
      t.string :array

      t.timestamps
    end
  end
end
