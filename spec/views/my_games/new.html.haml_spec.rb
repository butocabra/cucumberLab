require 'spec_helper'

describe "my_games/new.html.haml" do

  it "should render a form with fields for creating a new game" do
    render
    rendered.should have_selector "input[name=title]"
    rendered.should have_selector "input[name=description]"
    rendered.should have_selector "input[type=submit]"
  end

end
