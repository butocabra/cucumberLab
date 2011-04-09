class WelcomeController < ApplicationController

  def login
    if ( params[:email] && params[:password] )
      user = User.authenticate( params[:email] , params[:password] )
      if user  
        session[:user_id] = user.id  
        redirect_to root_url, :notice => "Logged in!"  
      else  
        flash.now.alert = "Invalid email or password"  
      end  
    end
  end

  def join
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save  
      redirect_to root_url, :notice => "Signed up!"  
    else  
      render "join"  
    end
  end


end
