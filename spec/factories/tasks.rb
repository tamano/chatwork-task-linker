FactoryGirl.define do
  factory :task do
    user nil
    chatwork_task_id 1
    limit_time 1
    body 'MyText'
  end
end
