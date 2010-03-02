# To change this template, choose Tools | Templates
# and open the template in the editor.

class BokResponse
  EMPTY = []

  attr_accessor :bok, :children, :updated

  def initialize(bok = nil, children = nil)
    @bok = bok
    @children = children
  end

  def to_json()
    @bok = {:bok => nil} if @bok.nil?
    @children = EMPTY if @children.nil?
    @updated = EMPTY if @updated.nil?
     [@bok, {:boks => @children}, {:updated => @updated}]
  end
end
