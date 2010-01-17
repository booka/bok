class Bok < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, :class_name => 'Bok'

  attr_reader :user_name

  validates_presence_of :bok_type, :user_id

  def user_name
    user ? user.name : ''
  end
end
