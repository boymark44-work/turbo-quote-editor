class ApplicationController < ActionController::Base
  # Add this line to see the progress bar long enough and remove it when it has the expected styles
  #before_action -> { sleep 6 }

  # To ensure that users are authenticated everywhere on the whole application
  # The exception allows unauthenticated users to access the login form, otherwise they cannot proceed.
  before_action :authenticate_user!, unless: :devise_controller?

  private  

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end
  helper_method :current_company # Makes the method available in views
end
