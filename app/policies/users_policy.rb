class UsersPolicy < ApplicationPolicy
  def permitted_attributes
    [:name, :email, :password, :password_confirmation, :reset_password_token, :kind]
  end
end
