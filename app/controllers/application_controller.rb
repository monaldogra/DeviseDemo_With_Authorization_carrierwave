class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_filter :set_current_user

before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    end
 



protected
def set_current_user
  Authorization.current_user = current_user
end




end


 