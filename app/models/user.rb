require 'bcrypt'
# require 'pintrest-api'

class User < ActiveRecord::Base
include BCrypt

# where is this ACCESS_TOKEN coming from?
# client = Pinterest::Client.new(ACCESS_TOKEN)

  validates :username, :email, {presence: true, uniqueness: true}

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(user_password)
    self.password == user_password
  end
end
