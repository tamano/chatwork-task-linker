# NotifyRuleMonthly
class NotifyRuleMonthly < NotifyRule
  validates :target_day, presence: true
end
