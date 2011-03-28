require 'spec_helper'

describe "all_games/index.html.haml"  do

  it "should render a list of games" do 
    game = mock_model(Game,:title => "the title")
    assign(:games, [game])

    render

    rendered.should contain("the title")
  end

end
