require 'rails_helper'

RSpec.describe NotifyRule, type: :model do
  describe '#next' do
    it 'always return nil' do
      rule = FactoryGirl.create(:notify_rule)
      expect(rule.next).to be_nil
    end
  end
end
