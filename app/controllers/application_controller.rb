class ApplicationController < ActionController::Base
    before_action :update_allowed_parameters, if: :devise_controller?

    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:firstname, :lastname, :email, :password, :password_confirmation)
      end
    end
end
