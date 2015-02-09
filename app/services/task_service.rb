# Service about controlling tasks
class TaskService
  def notify_limit(notify_before = ['over', 0, 1, 7])
    sysbot_task = ChatworkTaskService.new(User.find(1))
    tasks = sysbot_task.fetch_chatwork_tasks

    notify_before.each do |day_before|
      target_day =
        if day_before == 'over'
          'over'
        else
          Date.today + day_before
        end

      target_tasks = check_limit(tasks, target_day)

      target_tasks.each do |task|
        message =
          if target_day == 'over'
            'over'
          else
            'day'
          end

        send_notice_to_owner(task, message)
      end
    end
  end

  def check_limit(tasks, target_day = 'over')
    result = []
    tasks.each do |task|
      if day_before == 'over'
        result << task if Time.at(task.limit_time).to_date > Day.today
      else
        result << task if Time.at(task.limit_time).to_date == target_day
      end
    end
  end

  def send_notice_to_owner(task, message)
    sysbot_message = ChatworkMessageService.new(User.find(1))
    sysbot_message.send_personal_message(task.account_id, message)
  end
end
