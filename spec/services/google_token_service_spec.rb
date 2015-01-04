require 'rails_helper'

RSpec.describe GoogleTokenService, type: :service do
  before :each do
    user = nil
    @service = GoogleTokenService.new(user)
  end

  describe 'refresh!' do
    it 'does not retrun nil' do
      expect(@service.refresh!).not_to be_nil
    end
  end
end
