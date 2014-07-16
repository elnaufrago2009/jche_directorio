Given(/^exists an user with email "(.*?)" an password "(.*?)"$/) do |arg1, arg2|
	User.create(:email => arg1, :password => arg2, :password_confirmation => arg2).save!  
end