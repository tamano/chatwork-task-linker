namespace :chatwork_task_notify do
  desc 'Operating tasks in ChatWork.'

  task limit_over: :environment do
    desc 'Fetch tasks and send message to owner whose task\'s limit is out of date.'
    message = 'このタスクは期日を過ぎてますよ！ 至急対応するか、期日を再調整してください。'
    service = TaskService.new(User.find(1))
    service.notify_limit('over', message)
  end

  task limit_today: :environment do
    desc 'Fetch tasks and send message to owner whose task\'s limit is today.'
    service = TaskService.new(User.find(1))
    service.notify_limit(0, message)
  end

  task limit_tommorow: :environment do
    desc 'Fetch tasks and send message to owner whose task\'s limit is tommorow.'
    service = TaskService.new(User.find(1))
    service.notify_limit(1, message)
  end

  task limit_nextweek: :environment do
    desc 'Fetch tasks and send message to owner whose task\'s limit is 7 days later.'
    service = TaskService.new(User.find(1))
    service.notify_limit(7, message)
  end
end
