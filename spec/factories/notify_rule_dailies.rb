FactoryGirl.define do
  factory :notify_rule_daily do
    target_room_id 1
    target_member_id 1
    message 'MyString'
  end
end
