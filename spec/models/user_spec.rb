require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'expired?' do
    before :each do
      time_now = Time.local(2015, 1, 1, 0, 0, 0)
      allow(Time).to receive(:now).and_return(time_now)
    end

    it 'retrun true if expired_at is past' do
      user = User.new
      user.expires_at = Time.local(2014, 12, 31, 23, 59, 59)
      expect(user.expired?).to be_truthy
    end

    it 'retrun false if expired_at is just now' do
      user = User.new
      user.expires_at = Time.local(2015, 1, 1, 0, 0, 0)
      expect(user.expired?).to be_falsey
    end

    it 'retrun false if expired_at is future' do
      user = User.new
      user.expires_at = Time.local(2015, 1, 1, 0, 0, 1)
      expect(user.expired?).to be_falsey
    end
  end
end
