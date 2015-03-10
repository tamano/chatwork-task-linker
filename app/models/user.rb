# User class
class User < ActiveRecord::Base
  has_one :setting, class_name: :UserSetting
  has_many :tasks
end
