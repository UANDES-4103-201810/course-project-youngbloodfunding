class CreateWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlists do |t|
      t.string :project_name

      t.timestamps
    end
  end
end
