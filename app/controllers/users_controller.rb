class UsersController < ApplicationController

  expose(:users)
  expose(:user, attributes: :user_params)

  def index
    authorize :users
  end

  def new
  end

  def create
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  private

  def user_params
    params.requite(:user).permit(*policy(User).permitted_attributes)
  end
end
