require 'spec_helper'

describe Game do

  it "should have a search method" do
    Game.create(:title => "test title")
    Game.search("test").should have(1).items
    Game.search("foo").should have(0).items    
  end
end
