require 'rails_helper'

RSpec.describe NotifyRuleWeekly, type: :model do
  describe '#next' do
    rule = FactoryGirl.create(:notify_rule_weekly)
    pending
  end
end
