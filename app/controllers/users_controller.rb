class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    puts user_params
    user = User.new(user_params)
    if user.save
        flash[:success] = 'You have successfully created User Login!'
        session[:user_id]
        redirect_to root_path
    else
        flash[:error] = 'Creating User has failed!'
        redirect_to new_user_path, notice: 'Please, try creating again.'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
    if current_user != user_id
    redirect_to categories_path
    else
      render :edit
    end
    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def show
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :city, :state, :email, :password, :password_confirmation)
  end

end
