require 'spec_helper'

describe AllGamesController do

  
  describe "GET 'browse'" do
    it "should be successful" do
      get 'browse'
      response.should be_success
     
    end
  end

end
