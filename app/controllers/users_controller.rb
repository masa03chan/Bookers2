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
  end
end
