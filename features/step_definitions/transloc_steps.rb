Given(/^I navigate to the-internet.herokuapp$/) do
  @browser = Selenium::WebDriver.for :firefox
  @browser.get('http://the-internet.herokuapp.com/login')
end

And(/^I fill in the username with "([^"]*)" and password with "([^"]*)"$/) do |username, password|
  @browser.find_element(:finder, 'identifier').send_keys username
  @browser.find_element(:finder, 'identifier').send_keys password
end

When(/^I tap the log in button$/) do 
  @broser.find_element(:finder, 'identifier').click
end    

Then(/^I should be logged in$/) do
  expect(@browser.page_source.include?('Secure Area')).to be_truthy
  @browser.quit
end

