# NotifyRuleWeekly
class NotifyRuleWeekly < NotifyRule
  validates :target_date, presence: true
end
