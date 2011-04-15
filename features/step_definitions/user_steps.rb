Given /^that I am not logged in$/ do
end

Then /^I should be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^a user with the email "([^"]*)" will exist$/ do |user_email|
  User.find_by_email(user_email).should_not == nil 
end

Given /^that I am logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should not be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

