# NotifyRuleDaily
class NotifyRuleDaily < NotifyRule
  public_class_method :new

  private

  def recent_target(ref_time)
    Time.new(ref_time.year, ref_time.month, ref_time.day, target_time.hour, target_time.min)
  end

  def target_interval_sec
    # one day
    (60 * 60 * 24)
  end
end
