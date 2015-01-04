# User class
class User < ActiveRecord::Base
  devise :database_authenticatable, :omniauthable, :registerable,
         :rememberable, :trackable, :timeoutable

  has_one :setting, class_name: :UserSetting
  has_many :tasks

  def self.find_for_google_oauth2(auth)
    user = User.where(email: auth.info.email).first

    if user
      user.token         = auth.credentials.token
      user.refresh_token = auth.credentials.refresh_token
      user.expires_at    = Time.at(auth.credentials.expires_at).to_datetime
      user.save
    else
      user = User.create(name:          auth.info.name,
                         provider:      auth.provider,
                         uid:           auth.uid,
                         email:         auth.info.email,
                         token:         auth.credentials.token,
                         refresh_token: auth.credentials.refresh_token,
                         expires_at:    Time.at(auth.credentials.expires_at).to_datetime,
                         password:      Devise.friendly_token[0, 20])
    end
    user
  end
end
