

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

Given /^no game exists with the title "([^"]*)"$/ do |title|
  makeNGames 1, title.reverse 
end

Then /^a game with the title "([^"]*)" exists$/ do |title|
  Game.where(:title=>title).exists?
end

