require 'rails_helper'

RSpec.describe ChatworkTaskService, type: :service do
  before :each do
    @service = ChatworkTaskService.new
  end

  describe '#fetch_tasks' do
    pending 'returns tasks in all rooms @user joins.'
  end

  describe '#fetch_tasks_in_room' do
    pending 'returns tasks in one room @user.'
  end

  describe '#fetch_rooms' do
    pending 'returns rooms @user joins.'
  end
end
