# NotifyRule
class NotifyRule < ActiveRecord::Base
  validates :target_room_id, presence: true
  validates :target_member_id, presence: true
  validates :target_time, presence: true
  validates :message, presence: true
  validates :target_time, presence: true
end
