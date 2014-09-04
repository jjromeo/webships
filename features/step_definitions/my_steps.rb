# Then(/^I fill in "(.*?)"$/) do |name|
# 	fill_in('name', :with => 'Jerome')
# end

Given(/^I don't enter a name$/) do
	fill_in('name', :with => '')
end

Given(/^I click "(.*?)"$/) do |arg1|
	click_link(arg1)
end

Given(/^I have registered with Jerome Pratt$/) do 
	step "I am on the homepage"
	# step "I should see 'New Game'"
	# step "I click 'New Game'"
	step "I should see 'Enter your name to play'"
	step "I fill_in('name', :with => '')"
	step "I press 'submit'"
	step "I should see 'Welcome to the game'"
end