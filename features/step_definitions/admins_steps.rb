Given(/^exists an admin with email "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  Admin.create(:email => arg1, :password => arg2, :password_confirmation => arg2).save!
end

When(/^I am visit "(.*?)" page$/) do |arg1|
  visit(arg1)
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I press "(.*?)"$/) do |arg1|  
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
	sleep(inspection_time=4)
end

