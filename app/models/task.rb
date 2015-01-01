# Tasks
class Task < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :chatwork_task_id, presence: true
end
