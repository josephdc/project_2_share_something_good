class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts user_params
    user = User.new(user_params)
    if user.save
        flash[:success] = 'You have successfully created User Login!'
        redirect_to user_path user.id
    else
        flash[:error] = 'Creating User has failed!'
        redirect_to new_user_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :city, :state, :email, :password, :password_confirmation)
    end

    def update
    end

    def show
    end

end
