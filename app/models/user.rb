class User < ActiveRecord::Base
  include BCrypt

validates :name, presence: true
validates :password, length: { minimum: 5,
                                maximum: 20,
                           too_short: "must have at least %{count} characters",
                            too_long: "must have at most %{count} characters"}

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, input_password)
    user = User.find_by_email(email)
    if user && user.password == input_password
      user
    else
      nil
    end
  end

  #TODO : Use bcrypt to store hashed passwords and authenticate users
end
