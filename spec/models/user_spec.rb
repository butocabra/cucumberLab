require 'spec_helper'

describe User do

  it "should have a way to create a user given a password" do
    pending "make this work"
  end

  it "should have a way to validate that a username/password pair is a legit user" do
    pending "this should work"
  end

  it { should respond_to(:password) } 
  
  it "should not populate the password field when fetched from the db" do
    User.create(:name => "test name", :password => "password", :email => "foo@example.com")
    u = User.find_by_name("test name")
    u.password.should be_nil
  end

end
