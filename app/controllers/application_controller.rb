class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_customer

  def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
  end

  def require_logged_in
    return true if current_customer

    redirect_to root_path
    return false
  end
end
