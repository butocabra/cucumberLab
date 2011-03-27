require 'spec_helper'

describe MyGamesController do
  
  describe "GET 'new'" do

    it "should be successful" do
      get :new 
      response.should be_success
    end

    it "should serve a form for creating a new game" do 
      get :new
      response.should render_template("new")
    end
    
    it "should pass a new game to the view" do
      get :new
      assigns(:game).should be_a_new(Game)
    end
  end

end
