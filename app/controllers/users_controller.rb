class UsersController < ApplicationController

  expose(:users)
  expose(:user, attributes: :user_params)

  def index
    authorize :users
  end

  def new
    authorize :user
  end

  def create
    authorize :user
    user.save
  end

  def edit
    authorize :user
  end
  
  def update
    authorize :user
  end

  def destroy
    authorize :user
  end

  private

  def user_params
    params.requite(:user).permit(*policy(User).permitted_attributes)
  end
end
