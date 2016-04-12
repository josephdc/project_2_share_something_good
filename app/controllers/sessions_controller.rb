class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to categories_path
    else
      flash[:error] = 'Invalid login credentials - Try again!'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
