require 'spec_helper'



describe User do

  it "should have a class method that can authenticate a user" do
     described_class.should respond_to(:authenticate) 
  end

  it { should respond_to(:password) } 
  
  it "should not populate the password field when fetched from the db" do
    User.create(:name => "test name", :password => "password", :email => "foo@example.com")
    u = User.find_by_name("test name")
    u.password.should be_nil
  end

end
