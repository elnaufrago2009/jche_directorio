Feature: Users sign in

Scenario: user sign in
Given exists an user with email "elnaufrago2009@hotmail.com" an password "123456789"
When I am visit "/" page
And I follow "Login User"
When I fill in "user_email" with "elnaufrago2009@hotmail.com"
And I fill in "user_password" with "123456789"
And I press "Login"
Then I should see "Signed in successfully."

Scenario: user logout
Given exists an user with email "elnaufrago2009@hotmail.com" an password "123456789"
When I am visit "/" page
And I follow "Login User"
When I fill in "user_email" with "elnaufrago2009@hotmail.com"
And I fill in "user_password" with "123456789"
And I press "Login"
And I follow "Salir User"
Then I should see "Signet out successfully."
