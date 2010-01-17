class UserSession
  attr_reader :user_name, :user_id
  attr_accessor :token

  def initialize(params = {})
    user = User.find_by_name(params[:name])
    @user_name = user.name
    @user_id = user.id
  end


  def errors
    []
  end

  def new_record?
    true
  end
  
  def save
    true
  end
end
