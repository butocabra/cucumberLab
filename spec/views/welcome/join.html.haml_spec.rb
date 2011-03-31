require 'spec_helper'

describe "welcome/login.html.haml" do

  it "should have a login button" do
    render
    rendered.should contain /login/i
  end

  it "should have a field for username" do
    render
    rendered.should contain /username/i
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
