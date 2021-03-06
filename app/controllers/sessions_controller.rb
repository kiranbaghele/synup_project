class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase,password:  params[:session][:password])
    if user
      log_in user
      redirect_to dashboards_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
