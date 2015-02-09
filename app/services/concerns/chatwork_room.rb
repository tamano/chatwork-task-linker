# Function to controll ChatWork's rooms.
module ChatworkRoom
  extend ActiveSupport::Concern

  def fetch_rooms
    ChatWork.api_key = @user.setting.chatwork_token
    ChatWork::Room.get
  end
end
