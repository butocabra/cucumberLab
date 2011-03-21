

Given /^that I want to see a list of games that exist$/ do
end


def makeNGames( n = 1, prefix = "game" )
  n.times do |x| 
    Game.create!(:title => prefix + (x + 1).to_s)
  end
end

Given /^there are (\d+) games that exist$/ do |count|
  makeNGames count.to_i
end

Given /^there are (\d+) games that exist with a title containing "([^"]*)"$/ do |count, name|
  makeNGames count.to_i, name
end

Given /^there are (\d+) games without "([^"]*)"$/ do |count, without|
  # note that unless someone uses a palindrome this should work.
  makeNGames count.to_i, without.reverse
end

When /^I search for "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

