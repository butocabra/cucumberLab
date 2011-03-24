require 'spec_helper'

describe AllGamesController do
  
  describe "GET 'browse'" do

    it "should be successful" do
      get 'browse'
      response.should be_success
    end

    it "should pull a list of all games" do
      game = mock_model(Game,:title => "game one title")
      games = [game]
      Game.should_receive(:all).and_return(games)
      get 'browse'
      response.should render_template("browse")
    end
  end

  describe "Get 'search'" do
    it "should search for a term" do
      Game.should_receive(:where).once.and_return [ mock_model(Game,:title=>"title") ]
      get 'search', { :q => "title" }
    end
  end

  

end
