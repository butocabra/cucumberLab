

Given /^that I want to see a list of games that exist$/ do
end

Given /^there are (\d+) games that exist$/ do |arg1|
  arg1.to_i.times do |x| 
	g = Game.create!(:title => "game#{x + 1}")
  end  
end


