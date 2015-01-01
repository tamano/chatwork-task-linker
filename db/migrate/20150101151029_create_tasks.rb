class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true, null: false
      t.integer :chatwork_task_id, null: false
      t.integer :limit_time
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :tasks, :users
  end
end
