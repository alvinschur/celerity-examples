Feature: Verify Cucumber, celerity, rspec are installed
  In order verify web application behaviour
  the development team should be able to 
  run cucumber and celerity 

  Scenario: visit the web application home page
    When I visit the home page
    Then I should see "Welcome to Ramaze!"
