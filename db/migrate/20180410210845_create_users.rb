class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :string
      t.string :email
      t.string :string
      t.string :password
      t.string :string
      t.integer :role

      t.timestamps
    end
  end
end
