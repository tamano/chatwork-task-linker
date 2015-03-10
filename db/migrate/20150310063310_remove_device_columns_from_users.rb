class RemoveDeviceColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :encrypted_password, :string
    remove_column :users, :remember_created_at, :datetime
    remove_column :users, :sign_in_count, :integer
    remove_column :users, :current_sign_in_at, :datetime
    remove_column :users, :last_sign_in_at, :datetime
    remove_column :users, :current_sign_in_ip, :string
    remove_column :users, :last_sign_in_ip, :string

    remove_column :users, :provider, :string
    remove_column :users, :uid, :string
    remove_column :users, :token, :string

    remove_column :users, :refresh_token, :string
    remove_column :users, :expires_at, :datetime
  end
end
