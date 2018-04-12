class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.integer :contribution
      t.string :donation
      t.string :user_id

      t.timestamps
    end
  end
end
