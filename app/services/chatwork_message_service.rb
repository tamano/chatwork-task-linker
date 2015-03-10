# Service about message Control
class ChatworkMessageService
  include ChatworkRoom

  def send_message(room_id, message)
    ChatWork.api_key = Rails.application.secrets.chatwork_token
    ChatWork::Message.create(room_id: room_id, body: message)
  end

  def send_message_to(room_id, user_ids, message)
    to_text = user_ids.map { |v| "[To:#{v}]" }.join
    send_message(room_id, to_text + "\n" + message)
  end

  def send_personal_message(name, message)
    direct_rooms = fetch_direct_rooms

    target = direct_rooms.detect { |room| room['name'] == name }
    send_message(target['room_id'], message)
  end
end
