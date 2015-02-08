# Service about Task Control
class ChatworkTaskService
  @user = nil

  def initialize(user)
    @user = user
  end

  def fetch_chatwork_tasks
    tasks = []
    fetch_rooms.each do |room|
      tasks << fetch_chatwork_tasks_in_room(room['room_id'])
    end

    # empty elements will removed here.
    tasks.flatten
  end

  def fetch_my_chatwork_tasks
    fetch_chatwork_tasks.delete_if { |item| item.name != user.name }
  end

  def fetch_chatwork_tasks_in_room(room_id)
    ChatWork.api_key = @user.setting.chatwork_token
    tasks = ChatWork::Task.get(room_id: room_id)

    tasks.instance_of?(ChatWork::APIError) ? [] : tasks
  end

  def fetch_rooms
    ChatWork.api_key = @user.setting.chatwork_token
    ChatWork::Room.get
  end
end
