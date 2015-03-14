class CreateNotifyRules < ActiveRecord::Migration
  def change
    create_table :notify_rules do |t|
      t.integer :target_room_id, null: false
      t.integer :target_member_id, null: false
      t.time :target_time, null: false
      t.string :message, null: false
      t.integer :target_day
      t.integer :target_date
      t.string :type, index: true
      t.datetime :executing_at, index: true
      t.datetime :last_executed_at

      t.timestamps null: false
    end
  end
end
