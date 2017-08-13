class UsersController < ApplicationController
  include SessionsHelper

  def create
    @user = User.new(user_params)
    if @user.save
      login
      flash.notice = "Welcome to Shit's Closing Down, '#{@user.username}'!"
      redirect_to @user
    else
      flash.notice = "There was a problem creating your ID.  Please use a valid email address and passowrd and try again."
      redirect_to '/users/new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #need postings here, i assume. BG
  end



  private

  def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :username, :password_digest, :password)
  end

end
