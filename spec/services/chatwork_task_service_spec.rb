require 'rails_helper'

RSpec.describe ChatworkTaskService, type: :service do
  before :each do
    user = nil
    @service = ChatworkTaskService.new(user)
  end

  describe 'fetch_chatwork_tasks' do
    it 'does not retrun nil' do
      expect(@service.fetch_chatwork_tasks).not_to be_nil
    end
  end

  describe 'fetch_my_chatwork_tasks' do
    it 'does not retrun nil' do
      expect(@service.fetch_my_chatwork_tasks).not_to be_nil
    end
  end
end
