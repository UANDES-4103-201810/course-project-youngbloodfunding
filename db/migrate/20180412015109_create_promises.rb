class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.date :estimated_delivery
      t.references :project

      t.timestamps
    end
  end
end
