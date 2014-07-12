class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception


	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nombre
    devise_parameter_sanitizer.for(:sign_up) << :apellido
    devise_parameter_sanitizer.for(:sign_up) << :cargo_id
    devise_parameter_sanitizer.for(:sign_up) << :area_id
    devise_parameter_sanitizer.for(:sign_up) << :empresa_id
    devise_parameter_sanitizer.for(:sign_up) << :fecha_nacimiento
    devise_parameter_sanitizer.for(:sign_up) << :dni
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :movil_1
    devise_parameter_sanitizer.for(:sign_up) << :movil_2
    devise_parameter_sanitizer.for(:sign_up) << :telefono_fijo
    devise_parameter_sanitizer.for(:sign_up) << :nacionalidad
    devise_parameter_sanitizer.for(:sign_up) << :estado_civil
    devise_parameter_sanitizer.for(:sign_up) << :observaciones    
  end


end
