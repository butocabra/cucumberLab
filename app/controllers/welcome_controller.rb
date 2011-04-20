class WelcomeController < ApplicationController

  def login
    if ( params[:email] && params[:password] )
      user = User.authenticate( params[:email] , params[:password] )
      if user  
        session[:user_id] = user.id  
        redirect_to all_games_url, :notice => "Thanks, you are logged in as #{user.email}!"  
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
      redirect_to all_games_url, :notice => "Thanks #{ @user.email }, you have been signed up!"  
    else  
      render "join"  
    end
  end


  def logout
  end

end
