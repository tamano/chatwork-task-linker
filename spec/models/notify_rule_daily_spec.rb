require 'rails_helper'

RSpec.describe NotifyRuleDaily, type: :model do
  describe '#next' do
    before :all do
      @rule = FactoryGirl.create(:notify_rule_daily, target_time: '09:00')
    end

    it 'returns target_time of current day if it is not past' do
      allow(Time).to receive(:now).and_return(Time.new(2015, 3, 13, 8, 59))
      expect(@rule.next).to eq(Time.parse('2015-03-13 9:00'))
    end

    it 'returns target_time of next day if it is past' do
      allow(Time).to receive(:now).and_return(Time.new(2015, 3, 13, 9, 0))
      expect(@rule.next).to eq(Time.parse('2015-03-14 9:00'))
    end
  end
end
