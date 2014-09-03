# Then(/^I fill in "(.*?)"$/) do |name|
# 	fill_in('name', :with => 'Jerome')
# end

Given(/^I don't enter a name$/) do
	fill_in('name', :with => '')
end

Given(/^I click "(.*?)"$/) do |arg1|
	click_link('New Game')
end