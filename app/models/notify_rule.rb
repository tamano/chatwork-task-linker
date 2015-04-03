# NotifyRule
class NotifyRule < ActiveRecord::Base
  validates :target_room_id, presence: true
  validates :target_member_id, presence: true
  validates :target_time, presence: true
  validates :message, presence: true
  validates :target_time, presence: true

  private_class_method :new

  def next
    current_time = Time.now

    target = recent_target(current_time)
    target += target_interval_sec while current_time >= target
    target
  end

  private

  def recent_target
    raise "You can't call get_recent_target."
  end

  def target_interval_sec
    raise "You can't call target_interval_sec."
  end
end
