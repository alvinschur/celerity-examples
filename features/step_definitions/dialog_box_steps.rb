Given /^I have an alert handler that sends secret messages$/ do
  alert_handler = lambda do |page, string| 
    page.executeJavaScript("$('#secret_message').append('alert hander received string: #{string}')")
  end
  @browser.webclient.setAlertHandler(alert_handler)
end

Given /^I have a confirmation handler that clicks on "(OK|Cancel)"$/ do |ok_or_cancel|
  confirm_handler = lambda do |page, string| 
    return ok_or_cancel == 'OK'
  end
  @browser.webclient.setConfirmHandler(confirm_handler)
end

When /^I visit a page with an alert dialog box$/ do
  @browser.goto('http://localhost:7000/page_for_alert_dialog')
end

When /^I visit a page with a confirmation dialog box$/ do
  @browser.goto('http://localhost:7000/page_for_confirm_dialog')
end

When /^I press "Show alert"$/ do
  @browser.buttons.first.click
end

When /^I press "Show confirmation"$/ do
  @browser.buttons.first.click
end
