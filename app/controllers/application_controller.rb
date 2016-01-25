class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def event(year)
    if year.present?
        Event.find_by(name: year)
    else
        @events.first
    end
  end
end
