class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  include SessionsHelper

  def authenticate_user
    unless logged_in?
      redirect_to root_url
    end
  end
end
