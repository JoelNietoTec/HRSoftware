#encoding: UTF-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_breadcrumb "Inicio", :root_path
  protect_from_forgery with: :exception
  add_flash_types :success, :error

  private

  before_filter :instantiate_controller_and_action_names

  def instantiate_controller_and_action_names
    @current_action = action_name
    @current_controller = controller_name
  end


  before_filter :require_login, :except => [:not_authenticated]

  protected

  def not_authenticated
    redirect_to root_url, :alert => "Accesar"
  end
end
