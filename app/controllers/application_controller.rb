class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  devise_group :user, contains: [:user, :doctor]
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user! or :authenticate_doctor!


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:phone, :name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :name, :profession_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone, :name, :profession_id])

  end
end
