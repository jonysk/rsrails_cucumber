# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected

  def login_required
    if authorized?
      true
    else
      flash[:notice] = "Please, log in to access this area"
      access_denied
    end
  end
  
end
