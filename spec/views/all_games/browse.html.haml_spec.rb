require 'spec_helper'
require 'game'

describe "all_games/browse.html.haml", :behaviour_type => :view do

  game = mock_model(Game)
  game.should_receive(:title).and_return("the title") 
  assigns[:games] = [game]

  response.should contain("the title")

end
