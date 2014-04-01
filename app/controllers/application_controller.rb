class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :store_location
  def store_location
    unless params[:controller] == "devise/sessions"
      url = #calculate the url here based on a params[:token] which you passed in
      session[:user_return_to] = url
    end
  end

  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || profile_home_path
  end

end
