require 'spec_helper'

describe WelcomeController do

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end
    
  describe "GET 'join'" do
    it "should be successful" do
      get 'join'
      response.should be_success
    end
  end

end
