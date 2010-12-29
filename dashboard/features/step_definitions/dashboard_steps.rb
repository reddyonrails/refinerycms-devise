# Login stuff
Given /I am a logged in refinery user/ do
  visit login_path
  And %Q`enter the username "demo"`
  And %Q`enter the password "demo"`
  And "press the login button"
end