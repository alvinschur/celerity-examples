require 'celerity'
require 'spec'
require 'hpricot'
#
# Executed before every scenario
#
Before do
  # Manually control waiting for AJAX calls
  @browser = Celerity::IE.new
  
  # Wait for AJAX calls automatically
  # @browser = Celerity::Browser.new(:resynchronize => true)
end

#
# Exceucted after every scenario
#
After do
  @browser.close
end


When "I visit the home page" do
  @browser.goto('http://localhost:7000')
end

When "I visit a page with javascript running on page load" do
  @browser.goto('http://localhost:7000/on_page_load')
end

When "I visit a page with javascript run after clicking a button" do
  @browser.goto('http://localhost:7000/buttons_with_javascript')
end

When "I press 'Push me'" do
  @browser.buttons.first.click
end

Then /^I should see "(.*)"$/ do |text|
  @browser.html.should  =~ /#{text}/m
end

Then /^I should see a secret message "(.*)"$/ do |text|
  doc = Hpricot(@browser.page.as_xml)
  doc.search('#secret_message').text.should =~ /#{text}/m
end

Then /^I should not see a secret message "(.*)"$/ do |text|
  doc = Hpricot(@browser.page.as_xml)
  doc.search('#secret_message').text.should_not =~ /#{text}/m
end
