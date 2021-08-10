class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :basic

  def basic
   authenticate_or_request_with_http_basic do |user, pass|
     user == ENV['BASIC_USER'] && pass == ENV['BASIC_PASSWORD']
   end
 end

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :is_deleted])
    # アカウント編集の時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :is_deleted])
  end

end
