class ApplicationController < ActionController::Base
    before_action :update_allowed_parameters, if: :devise_controller?

    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:firstname, :lastname, :email, :password, :password_confirmation, :avatar)
      end
    end

  private
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, notice: "Please Login to view that page!"
    end
  end
end
