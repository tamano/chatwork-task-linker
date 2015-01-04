# Services about Google API Token
class GoogleTokenService
  @user = nil

  def initialize(user)
    @user = user
  end

  def refresh!
    nil
  end
end
