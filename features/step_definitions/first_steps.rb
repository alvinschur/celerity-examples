require 'celerity'
require 'spec'

#
# Executed before every scenario
#
Before do
  @browser = Celerity::IE.new
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

Then /I should see "(.*)"/ do |text|
  @browser.page.as_xml.should  =~ /#{text}/m
end
