class ApplicationController < ActionController::Base
  include Pundit::Authorization
  protect_from_forgery with: :exception

  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
        # keys: [:username, :name, :email, :password, :password_confirmation])
        keys: [ :email, :password ])
      devise_parameter_sanitizer.permit(:sign_in,
        # keys: [:login, :password, :password_confirmation])
        keys: [:email, :password, ])
      devise_parameter_sanitizer.permit(:account_update,
        keys: [ :email, :password_confirmation, :current_password])
        # keys: [:username, :name, :email, :password_confirmation, :current_password])
    end
end
