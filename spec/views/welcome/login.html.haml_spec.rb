require 'spec_helper'

describe "welcome/login.html.haml" do
  context "normal" do

    before (:each) do
      user = stub_model(User)
      assign(:user,[user])
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
