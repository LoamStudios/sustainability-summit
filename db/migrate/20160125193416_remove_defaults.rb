class RemoveDefaults < ActiveRecord::Migration
  def change
    change_column_default :people, :email, nil
    change_column_default :people, :encrypted_password, nil
    change_column_default :people, :remember_token, nil
  end
end
