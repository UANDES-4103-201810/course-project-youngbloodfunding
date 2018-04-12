class CreatePackages < ActiveRecord::Migration[5.1]
  def change
    create_table :packages do |t|
      t.string :bundle_name
      t.string :bundle_description
      t.integer :bundle_price

      t.timestamps
    end
  end
end
