# Service about Task Control
class ChatworkTaskService
  @user = nil

  def initialize(user)
    @user = user
  end

  def fetch_chatwork_tasks
    tasks = []
    fetch_rooms.each do |room|
      tasks << fetch_chatwork_tasks_in_room(room['id'])
    end

    tasks
  end

  def fetch_my_chatwork_tasks
    fetch_chatwork_tasks.delete_if { |item| item.owner != user.name }
  end

  def fetch_chatwork_tasks_in_room(room_id)
    # access to chatwork api and get tasks in a room.
    room_id
  end

  def fetch_rooms
    # access to chatwork api and get rooms this user joins.
    nil
  end
end
