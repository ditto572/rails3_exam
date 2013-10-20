class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize

  class Forbidden < StandardError; end

  private
  def authorize
    if session[:member_id]
      @current_member = Member.find_by_id(session[:member_id])
      session.delete(:member_id) unless @current_member
    end
  end

  def login_required
    raise Forbidden unless @current_member
  end
end
