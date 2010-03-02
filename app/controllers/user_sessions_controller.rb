class UserSessionsController < ApplicationController
  inherit_resources
  respond_to :html, :xml, :json, :js
  actions :create, :destroy, :show, :new
  protect_from_forgery :only => []

  def new
    @user_session = UserSession.new
    new!
  end

  def show
    @user_session = current_user_session
    @user_session ||= UserSession.new
    show! do |success|
      success.json {render :json => @user_session.to_json}
    end
  end


  def create
    @user_session = UserSession.new(params[:user_session])
    @user_session.token = form_authenticity_token
    create!
  end
end
