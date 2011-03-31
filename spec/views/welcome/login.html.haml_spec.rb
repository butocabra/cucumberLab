require 'spec_helper'

describe "welcome/join.html.haml" do

  it "should have a field for email" do
    render
    rendered.should contain /email/i
  end

  it "should have a field for password" do
    render
    rendered.should contain /password/i
  end

end
