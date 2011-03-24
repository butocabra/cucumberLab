require 'spec_helper'

describe "all_games/search.html.haml" do
  
  it "should render a search form" do
    render
    rendered.should have_selector "input[type=text]"
    rendered.should have_selector "input[type=submit]"
  end

  it "should render search results if there are any" do
    assign(:games, [ mock_model(Game, :title => "game title one")])
    assign(:searchSummary, "here is the search summary")

    render

    rendered.should contain "game title one"
    rendered.should contain "search summary"
  end

end
