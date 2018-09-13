class ApplicationController < ActionController::Base
  include Pundit

  unless Rails.application.config.consider_all_requests_local
    rescue_from ActiveRecord::RecordNotFound,
                Pundit::NotAuthorizedError,
                ActionController::RoutingError, with: :user_not_authorized
  end

  before_action :authenticate_user!

  private
  
  def user_not_authorized
    render template: "errors/404", status: :not_found
  end
end
