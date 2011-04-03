require 'spec_helper'

describe "welcome/join.html.haml" do

  context "with an empty user" do

    before (:each) do
      user = stub_model(User)
      assign(:user, user)
    end

    it "should have a join button" do
      render
      rendered.should contain /join/i
    end

    it "should have a field for email" do
      render
      rendered.should contain /email/i
    end

    it "should have a field for password" do
      render
      rendered.should contain /password/i
    end
  end

end
