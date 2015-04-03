# NotifyRuleDaily
class NotifyRuleDaily < NotifyRule
  def next
    current_time = Time.now

    candidate_executing_at = Time.new(
      current_time.year, current_time.month, current_time.day, target_time.hour, target_time.min)

    candidate_executing_at += (60 * 60 * 24) while current_time >= candidate_executing_at
    candidate_executing_at
  end
end
