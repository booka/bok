class Bok < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, :class_name => 'Bok'

  has_many :children, :foreign_key => 'parent_id', :class_name => 'Bok', :order => 'position'
  acts_as_list :scope => :parent_id

  attr_reader :user_name

  validates_presence_of :bok_type, :user_id

  def user_name
    user ? user.name : ''
  end
end
