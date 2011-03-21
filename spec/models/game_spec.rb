require 'spec_helper'

describe Game do
  describe "#title" do 
    it "acts as accessor" do
      game = Game.new
      gTitle = "this is a title" 
      game.title = gTitle
      game.title.should == gTitle
    end
  end
end
