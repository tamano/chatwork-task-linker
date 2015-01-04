class TaskService
  @user = nil

  def initialize(user)
    @user = user
  end

  def fetch_chatwork_tasks
    return nil
  end

  def update_gcal_tasks
    return nil
  end
end
