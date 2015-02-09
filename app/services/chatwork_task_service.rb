# Service about Task Control
class ChatworkTaskService
  include ChatworkRoom
  @user = nil

  def initialize(user)
    @user = user
  end

  def fetch_tasks
    tasks = []
    fetch_rooms.each do |room|
      tasks << fetch_tasks_in_room(room['room_id'])
    end

    # empty elements will removed here.
    tasks.flatten
  end

  def fetch_my_tasks
    fetch_tasks.select { |item| item['name'] == @user.name }
  end

  def fetch_tasks_in_room(room_id)
    ChatWork.api_key = @user.setting.chatwork_token
    tasks = ChatWork::Task.get(room_id: room_id)

    if tasks.instance_of?(ChatWork::APIError)
      []
    else
      tasks.each do |task|
        task['room_id'] = room_id
      end

      tasks
    end
  end
end
