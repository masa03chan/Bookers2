class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    
    @book = Book.new
  end

  def index
    @user = current_user
    @users = User.all

    @book = Book.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
