Feature: Administrators sign in

Scenario: admin sign in
Given exists an admin with email "elnaufrago2009@hotmail.com" and password "123456789"
When I am visit "/" page
And I follow "Login Admin"
When I fill in "admin_email" with "elnaufrago2009@hotmail.com"
And I fill in "admin_password" with "123456789"
And I press "Login"
Then I should see "Signed in successfully."

Scenario: admin logout
Given exists an admin with email "elnaufrago2009@hotmail.com" and password "123456789"
When I am visit "/" page
And I follow "Login Admin"
When I fill in "admin_email" with "elnaufrago2009@hotmail.com"
And I fill in "admin_password" with "123456789"
And I press "Login"
And I follow "Salir Admin"
Then I should see "Signed out successfully."
