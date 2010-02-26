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

  def create
    create! do |format|
      update_position(@bok)
      format.json { render_json(@bok, @boks)}
    end
  end

  def update
    request.format = params[:format] unless params[:format].empty?
    update! do |format|
      update_position(@bok)
      format.json { render_json(@bok, @bok.children)}
    end
  end

  private
  def update_position(bok)
    new_position = params[:bok][:position]
    bok.insert_at(new_position) unless new_position.blank?
  end

end
