# Function to controll ChatWork's rooms.
module ChatworkRoom
  extend ActiveSupport::Concern

  def fetch_rooms
    ChatWork.api_key = @user.setting.chatwork_token
    ChatWork::Room.get
  end

  def fetch_direct_rooms
    fetch_rooms.select { |item| item['type'] == 'direct' }
  end
end
