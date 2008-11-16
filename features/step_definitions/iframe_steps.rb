When "I visit google inside an iframe" do
  @browser.goto('http://localhost:7000/page_with_an_iframe')
end

When "I press \"I'm feeling lucky\"" do
  @browser.frame(:name, 'my_google').button(:name, 'btnI').click
end

Then /^I should see "(.*)" in the iframe$/ do |text|
  @browser.frame(:name, 'my_google').text.should =~ /#{text}/m
end

Then /^I should not see "(.*)" in the iframe$/ do |text|
  @browser.frame(:name, 'my_google').text.should_not =~ /#{text}/m
end

Then /^I should see "(.*)" in the main page$/ do |text|
  @browser.text.should =~ /#{text}/m
end

Then /^I should not see "(.*)" in the main page$/ do |text|
  @browser.text.should_not =~ /#{text}/m
end
