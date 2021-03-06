class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
     flash[:success] = "Welcome to Agilegram #{@user.username}"
     redirect_to posts_path
    else
     render 'new'
    end
   end

   def update
    @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:success] = "Your account was updated successfully"
     redirect_to posts_path
    else
     render 'edit'
    end
   end

  

   def show
    @user = User.find(params[:id])
   end

   def index
   end

   private

   def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :email, :password)
   end
  
end