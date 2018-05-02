class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :role
      t.string :email
      t.string :password
      t.string :picture
=begin
      recordar que se le agrego picture, hacer scaffolding de nuevo
=end

      t.timestamps
    end
  end
end
