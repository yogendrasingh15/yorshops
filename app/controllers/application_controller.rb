class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout :layout_by_reference
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def layout_by_reference
  	'application'
  end
end
