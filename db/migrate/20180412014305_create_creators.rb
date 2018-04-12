class CreateCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :creators do |t|
      t.string :company_name

      t.timestamps
    end
  end
end
