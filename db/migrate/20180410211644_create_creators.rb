class CreateCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :creators do |t|
      t.string :account
      t.string :string
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
