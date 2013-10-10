class SplashController < ApplicationController
  def index
    @user = User.new
    @registration_success = false;
    @registration_error = false;
    @display_registration_form = true
    
    render :layout => 'splash'

  end
  
  def register
    @user = User.new(params[:user])

    if @user.save
	    begin
	      #UserMailer.welcome_email(@user).deliver
	    rescue
	    end
        @registration_success = true;
        @registration_error = false;
    	@display_registration_form = false
    else
    	@registration_success = false;
        @registration_error = true;
        @display_registration_form = true
    end
    
    #redirect_to :controller => "splash", :action => "index", :post => "OK?"	
    render :index, :layout => 'splash'
      
  end

  def unregister
    @user = User.find(params[:user])

    if @user.destroy

    else

    end
    
    #redirect_to :controller => "splash", :action => "index", :post => "OK?"	
    render :index
      
  end
  
end
