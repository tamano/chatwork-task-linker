# Service about controlling tasks
class TaskService
  def notify_limit(notify_before = ['over', 0, 1, 7])
    sysbot_task = ChatworkTaskService.new(User.find(1))
    tasks = sysbot_task.fetch_tasks

    notify_before.each do |day_before|
      target_day = get_target_day(day_before)

      target_tasks = check_limit(tasks, target_day)

      target_tasks.each do |task|
        message =
          if target_day == 'over'
            'over/' + task['body']
          else
            'day:' + target_day.to_s + '/' + task['body']
          end

        send_notice_to_owner(task, message)
      end
    end
  end

  def check_limit(tasks, target_day = 'over')
    result = []
    tasks.each do |task|
      if target_day == 'over'
        result << task if Time.at(task['limit_time']).to_date < Date.today
      else
        result << task if Time.at(task['limit_time']).to_date == target_day
      end
    end
    result
  end

  def send_notice_to_owner(task, message)
    sysbot_message = ChatworkMessageService.new(User.find(1))
    sysbot_message.send_personal_message(task['account']['name'], message)
    # TODO: using task['name'] as a target identifier is not good. should use member of chatroom.
  end

  def get_target_day(day_before)
    if day_before == 'over'
      'over'
    else
      Date.today + day_before
    end
  end
end
