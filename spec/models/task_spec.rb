require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'expired?' do
    before :each do
      time_now = Time.local(2015,1,1,0,0,0)
      Time.stub(:now).and_return(time_now)
    end

    it 'retrun false if expired_at is past' do
      user = User.new
      user.expires_at = Time.local(2014,12,31,23,59,59)
      expect(user.expired?).to be_true
    end

    it 'retrun true if expired_at is just now' do
      user = User.new
      user.expires_at = Time.local(2015,1,1,0,0,0)
      expect(user.expired?).to be_true
    end

    it 'retrun true if expired_at is future' do
      user = User.new
      user.expires_at = Time.local(2015,1,1,0,0,1)
      expect(user.expired?).to be_true
    end
  end
end
