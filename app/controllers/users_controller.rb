class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
        flash[:success] = 'You have successfully created User Login!'
        redirect_to user_path user.id
    else
        flash[:error] = 'Creating User has failed!'
        redirect_to new_user_path
    end
  end

  def new
    @user = User.new
  end

  def update
  end

  def show
  end
end
