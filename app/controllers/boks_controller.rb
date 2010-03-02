class BoksController < ApplicationController
  inherit_resources
  respond_to :html, :xml, :json, :js

  def index
    @boks = Bok.search(params[:search]).all
    index! do |format|
      format.json { render :json => BokResponse.new(nil, @boks).to_json}
    end
  end

  def show
    @bok = Bok.find(params[:id])
    @boks = @bok.children
    show! do |format|
      format.json { render :json => BokResponse.new(@bok, @boks).to_json}
    end
  end

  def create
    create! do |format|
      response = BokResponse.new(@bok, nil)
      update_position(@bok, response)
      format.json { render :json => response.to_json}
    end
  end

  def update
    request.format = params[:format] unless params[:format].empty?
    update! do |format|
      response = BokResponse.new(@bok, nil)
      update_position(@bok, response)
      format.json { render :json => response.to_json}
    end
  end

  private
  def update_position(bok, response)
    new_position = params[:bok][:position]
    unless new_position.blank?
      bok.insert_at(new_position) 
      response.updated = bok.lower_sibilings
    end
  end

end
