class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

       def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:user_type, :email, :password,:username,:status,:profession,:service)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:user_type, :email, :password, :current_password,:username,:status,:profession,:service)}
       end

       def user_not_authorized
          flash[:alert] = "You are not authorized to perform this action."
          redirect_to(request.referrer || root_path)
        end
end
