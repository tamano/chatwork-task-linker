# Service about Task Control
class ChatworkTaskService
  @user = nil

  def initialize(user)
    @user = user
  end

  def fetch_chatwork_tasks
    nil
  end

  def fetch_my_chatwork_tasks
    # fetch_chatwork_tasks.delete_if { |item| item.owner != user.name }
    nil
  end
end
