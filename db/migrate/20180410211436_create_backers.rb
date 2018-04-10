class CreateBackers < ActiveRecord::Migration[5.1]
  def change
    create_table :backers do |t|
      t.string :payment_method
      t.string :array
      t.string :wishlist
      t.string :array

      t.timestamps
    end
  end
end
