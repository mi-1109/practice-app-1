class ApplicationController < ActionController::Base
  before_action :confiure_permitted_parameters, if: :devise_controller?

  protected

  #ユーザ登録時にユーザ名のデータ操作を許可
  def confiure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
