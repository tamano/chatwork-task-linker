require 'rails_helper'

RSpec.describe NotifyRuleDaily, type: :model do
  describe '#next' do
    context 'when executing_at is not nil' do
      before :all do
        @rule = FactoryGirl.create(:notify_rule_daily, executing_at: '2015-03-31 02:00:00', target_time: '09:00')
      end

      it 'returns executing_at if executing_at is not past' do
        Time.stub(:now).and_return(Time.new(2015, 3, 29, 11, 00))
        expect(@rule.next).to eq(Time.parse('2015-03-31 02:00'))
      end

      it 'returns target_time of current day if executing_at is past and target_time of current_day is past' do
        Time.stub(:now).and_return(Time.new(2015, 3, 31, 11, 00))
        expect(@rule.next).to eq(Time.parse('2015-04-01 09:00'))
      end

      it 'returns target_time of current day if executing_at is past and target_time of current_day is not past' do
        Time.stub(:now).and_return(Time.new(2015, 3, 31, 2, 00))
        expect(@rule.next).to eq(Time.parse('2015-03-31 09:00'))
      end
    end

    context 'when executing_at is nil' do
      before :all do
        @rule = FactoryGirl.create(:notify_rule_daily, executing_at: nil, target_time: '09:00')
      end

      it 'returns target_time of current day if it is not past' do
        Time.stub(:now).and_return(Time.new(2015, 3, 13, 8, 59))
        expect(@rule.next).to eq(Time.parse('2015-03-13 9:00'))
      end

      it 'returns target_time of next day if it is past' do
        Time.stub(:now).and_return(Time.new(2015, 3, 13, 9, 0))
        expect(@rule.next).to eq(Time.parse('2015-03-14 9:00'))
      end
    end
  end
end
