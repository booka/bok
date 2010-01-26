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
    @bok = Bok.find(params[:id])
    @boks = @bok.children
    show! do |format|
      format.json { render_json(@bok, @boks)}
    end
  end

  def update
    request.format = params[:format] unless params[:format].empty?
    update! do |format|
      format.json { render_json(@bok, @bok.children)}
    end
  end


end
