FactoryGirl.define do
  factory :notify_rule_daily do
    target_room_id 1
    target_member_id 1
    target_time '2015-03-15 00:39:07'
    message 'MyString'
    target_day 1
    target_date 1
  end
end
