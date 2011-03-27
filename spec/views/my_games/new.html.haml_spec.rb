require 'spec_helper'

describe "my_games/new.html.haml" do

  it "should render a form with fields for creating a new game" do

    assign(:game,stub_model(Game))
    render
    rendered.should contain /title/i
    rendered.should contain /description/i
    rendered.should have_selector "input[type=submit]"
  end

end
