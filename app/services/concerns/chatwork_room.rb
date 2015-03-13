# Function to controll ChatWork's rooms.
module ChatworkRoom
  extend ActiveSupport::Concern

  def fetch_rooms
    ChatWork.api_key = Rails.application.secrets.chatwork_token
    ChatWork::Room.get
  end

  def fetch_direct_rooms
    fetch_rooms.select { |item| item['type'] == 'direct' }
  end

  def fetch_room_members(room_id)
    ChatWork.api_key = Rails.application.secrets.chatwork_token
    ChatWork::Member.get(room_id: room_id)
  end
end
