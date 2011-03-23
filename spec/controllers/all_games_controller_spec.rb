require 'spec_helper'

describe AllGamesController do
  
  describe "GET 'browse'" do
    it "should be successful" do
      game = mock_model(Game,:title => "game one title")
      games = [game]
      Game.should_receive(:all).and_return(games)
      get 'browse'
      response.should render_template("browse")
    end
  end

  #describe "Get 'search'" do

end
