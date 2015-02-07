require 'rails_helper'

RSpec.describe GoogleTokenService, type: :service do
  before :each do
    user = nil
    @service = GoogleTokenService.new(user)
  end

  describe '#refresh!' do
    pending 'update token.'
  end
end
