class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.references :user, index: true, null: false
      t.string :chatwork_token

      t.timestamps null: false
    end
    add_foreign_key :user_settings, :Users
  end
end
