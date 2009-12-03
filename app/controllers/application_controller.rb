# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :set_user, :unless => "login"
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def login
    @user = User.new
    @user.andrewID = params[:andrewID]
  end

    def process_login
      if user = User.authenticate(params[:user])
        flash[:message] = 'Successful login!'
        session[:id] = user.id # Remember the user's id during this session
        redirect_to session[:return_to] || '/' 
      else
        flash[:error] = 'Invalid login.'
        redirect_to :action => 'index', :andrewID => params[:user][:andrewID] 
      end
    end
    
    def quick_vote
      #create and maybe save, a quick vote
      @quickvote = Quickvote.new
      @quickvote.candidate_id = params[:candidate_id]
      @quickvote.candidate_name = params[:candidate_name]
      @quickvote.votes += 1
      @quickvote.save
      flash[:notice] = 'Your vote has been counted! If you haven\'t already, please vote now in the other events.'
      redirect_to "/groups/3/events"
    end
    
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
    def set_user
      @user = User.find(session[:id]) if @user.nil? && session[:id]
    end
    
    def login_required 
      return true if @user 
      access_denied 
      return false
    end
    
    def access_denied 
      session[:return_to] = request.request_uri 
      flash[:error] = 'Oops. You need to login before you can view that page.' 
      redirect_to :controller => 'user', :action => 'login'
    end
end
