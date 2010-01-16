# To change this template, choose Tools | Templates
# and open the template in the editor.

class BoksController < ApplicationController
  inherit_resources
  respond_to :html, :xml, :json, :js

  def index
    @boks = Bok.search(params[:search]).all
    index!
  end
end
