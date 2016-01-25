class AddDefaultValueToEncryptedPassword < ActiveRecord::Migration
  def change
    change_column_default :people, :encrypted_password, ""
  end
end
