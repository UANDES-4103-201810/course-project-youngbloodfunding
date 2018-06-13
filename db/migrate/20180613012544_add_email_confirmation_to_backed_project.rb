class AddEmailConfirmationToBackedProject < ActiveRecord::Migration[5.1]
  def change
    add_column :backed_projects, :email_confirmation, :boolean, :default => false
    add_column :backed_projects, :confirm_token, :string
  end
end
