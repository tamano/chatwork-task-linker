require 'rails_helper'

RSpec.describe ChatworkTaskService, type: :service do
  before :each do
    user = nil
    @service = ChatworkTaskService.new(user)
  end

  describe '#fetch_chatwork_tasks' do
    pending 'returns tasks in all rooms @user joins.'
  end

  describe '#fetch_my_chatwork_tasks' do
    pending 'returns something.'
  end

  describe '#fetch_chatwork_tasks_in_room' do
    pending 'returns tasks in one room @user.'
  end

  describe '#fetch_chatwork_rooms' do
    pending 'returns rooms @user joins.'
  end
end
