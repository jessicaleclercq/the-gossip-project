class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(first_name: "", last_name: "", description: "", email: "", age: "")
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
