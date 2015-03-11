namespace :chatwork_broadcast_message do
  desc 'Send message to everyone.'
  task :send, [:message] => :environment do |_task, args|
    room_id = Rails.application.secrets.chatwork_broadcast_room_id
    user_ids = Rails.application.secrets.chatwork_broadcast_to_user_ids.split(':')
    message = args.message

    service = ChatworkMessageService.new
    service.send_message_to(room_id, user_ids, message)
  end
end
