# Service about message Control
class ChatworkMessageService
  include ChatworkRoom
  @user = nil

  def initialize(user)
    @user = user
  end

  def send_message(room_id, message)
    ChatWork.api_key = @user.setting.chatwork_token
    ChatWork::Message.create(room_id: room_id, body: message)
  end

  def send_message_to(room_id, user_ids, message)
    to_text = user_ids.map { |v| "[To:#{v}]"}.join
    send_message(room_id, to_text + "\n" + message)
  end

  def send_personal_message(name, message)
    ChatWork.api_key = @user.setting.chatwork_token
    direct_rooms = fetch_direct_rooms

    target = direct_rooms.detect { |room| room['name'] == name }
    ChatWork::Message.create(room_id: target['room_id'], body: message)
  end
end
