Given /^that I am not logged in$/ do
  visit log_out_path # we should be logged out
end

Then /^I should not be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have one user with email "([^"]*)" with password "([^"]*)"$/ do |email, pass|
  User.create!(:email => email, :password => pass)
end

Given /^that I am logged in as "([^"]*)" with password "([^"]*)"$/ do |email,pass|
  Given "I have one user with email \"#{email}\" with password \"#{pass}\""
  When "I go to the login page"
  When "I fill in \"email\" with \"#{email}\""
  When "I fill in \"password\" with \"#{pass}\""
  When "I press \"login\""
  Then "I should see \"logged in as #{email}\""
end

