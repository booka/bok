class UserSession < Authlogic::Session::Base
  attr_accessor :token

  def name
    self.user.name if self.user
  end

  def email
    self.user.login if self.user
  end

  def user_id
    self.user.id if self.user
  end


  def to_json
    [:name => name, :user_id => user_id, :email => email]
  end
end