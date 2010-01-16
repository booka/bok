class UserSession
  attr_accessor :token, :name, :password

  def initialize(params = {})
    
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
