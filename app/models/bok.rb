class Bok < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, :class_name => 'Bok'

  atrr_accessor :user_name

  def user_name
    user ? user.name : ''
  end
end
