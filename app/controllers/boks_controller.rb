class BoksController < ApplicationController
  inherit_resources
  respond_to :html, :xml, :json, :js

  def index
    @boks = Bok.search(params[:search]).all
    index! do |format|
      format.json { render_json(nil, @boks)}
    end
  end

  def show
    show! do |format|
      format.json { render_json(@bok, @bok.children)}
    end
  end


end
