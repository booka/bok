class BokChildrenController < ApplicationController
  inherit_resources
   defaults :resource_class => Bok, :collection_name => 'boks', :instance_name => 'bok'
  belongs_to :bok
  respond_to :html, :xml, :json, :js

  def index
    @bok = Bok.find(params[:bok_id])
    @boks = Bok.search(params[:search]).all
    index! do |format|
      format.json { render :json => {:bok => @bok, :children => @boks} }
    end
  end
end
