class UserSessionsController < ApplicationController
  inherit_resources
  respond_to :html, :xml, :json, :js
  actions :create, :new
  protect_from_forgery :only => []

  def create
    @user_session = UserSession.new(params[:user])
    @user_session.token = form_authenticity_token
    create!
  end
end
