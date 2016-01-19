class UpdatePeople < ActiveRecord::Migration
  def change
    add_column :people, :email, :string, null: false, default: ""
    add_column :people, :encrypted_password, :string, limit: 128, null: false, default: ""
    add_column :people, :confirmation_token, :string, limit: 128
    add_column :people, :remember_token, :string, limit: 128, null: false, default: ""

    add_index :people, :email
    add_index :people, :remember_token
  end
end
