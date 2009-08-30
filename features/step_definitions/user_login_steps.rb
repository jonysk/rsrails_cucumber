Given /^a regular user exists$/ do
  User.create :name => "Administrator", :email => "admin@admin.com", :login => "admin", :password => "administrator", :password_confirmation => "administrator"
end

Then /^I should be redirected to the login page$/ do
  response.should contain("Log In")
end

