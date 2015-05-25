class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotUnique, with: :show_errors
  rescue_from SQLite3::ConstraintException, with: :show_errors
  
  #forces user to login first! deactivated for test
  #before_action :authenticate_user!
end
