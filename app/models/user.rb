# User class
class User < ActiveRecord::Base
  devise :database_authenticatable, :omniauthable, :registerable,
         :rememberable, :trackable, :timeoutable

  has_one :setting, class_name: :UserSetting
  has_many :tasks

  def self.find_for_google_oauth2(auth)
    user = User.where(email: auth.info.email).first

    if user
      user.update_google_oauth2_token(auth)
    else
      user = User.create_by_google_oauth2_auth(auth)
    end
    user
  end

  def update_google_oauth2_token(auth)
    self.token         = auth.credentials.token
    self.refresh_token = auth.credentials.refresh_token
    self.expires_at    = Time.at(auth.credentials.expires_at).to_datetime
    save
  end

  def self.create_by_google_oauth2_auth(auth)
    User.create(
      name:          auth.info.name,
      provider:      auth.provider,
      uid:           auth.uid,
      email:         auth.info.email,
      token:         auth.credentials.token,
      refresh_token: auth.credentials.refresh_token,
      expires_at:    Time.at(auth.credentials.expires_at).to_datetime,
      password:      Devise.friendly_token[0, 20]
    )
  end

  def expired?
    expires_at < Time.now
  end
end
