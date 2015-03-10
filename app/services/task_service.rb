# Service about controlling tasks
class TaskService
  def notify_limit(notify_before = 'over', comment)
    sysbot_task = ChatworkTaskService.new
    tasks = sysbot_task.fetch_tasks

    target_day = get_target_day(notify_before)

    target_tasks = check_limit(tasks, target_day)

    target_tasks.each do |task|
      message = "#{comment}\n\n"
      message += "対象のチャット: https://www.chatwork.com/\#!rid#{task['room_id']}\n"
      message += '[info][title]タスクの内容[/title]' + task['body'] + '[/info]'

      send_notice_to_owner(task, message)
    end
  end

  private

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
    sysbot_message = ChatworkMessageService.new
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
