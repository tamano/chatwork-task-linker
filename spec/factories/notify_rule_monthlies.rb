FactoryGirl.define do
  factory :notify_rule_monthly do
    target_room_id 1
    target_member_id 1
    message 'MyString'
    target_date 1
  end
end
