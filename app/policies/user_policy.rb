class UserPolicy < ApplicationPolicy
  def permitted_attributes
    [:name, :email, :password, :password_confirmation, :kind]
  end
end
