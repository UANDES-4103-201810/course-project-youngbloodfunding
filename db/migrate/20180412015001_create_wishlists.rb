class CreateWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlists do |t|
      t.string :project_name
      t.string :user_id

      t.timestamps
    end
  end
end
