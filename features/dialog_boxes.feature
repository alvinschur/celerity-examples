Feature: Access content in a dialog box
  In order to close a dialog box
  the development team should be able to 
  access the DOM inside a dialog box
  
  Scenario: alert dialog box
    Given I have an alert handler that sends secret messages
    When I visit a page with an alert dialog box
    Then I should not see a secret message "After the alert box was displayed"
    And  I should not see a secret message "alert hander received string: The surprise is in the alert box."
    When I press "Show alert"
    Then I should see a secret message "After the alert box was displayed"
    And  I should see a secret message "alert hander received string: The surprise is in the alert box."


  Scenario: Click OK in a confirmation dialog box
    Given I have a confirmation handler that clicks on "OK"
    When  I visit a page with a confirmation dialog box
    Then  I should not see a secret message "You pressed OK"
    And   I should not see a secret message "You pressed Cancel"
    When  I press "Show confirmation"
    Then  I should see a secret message "You pressed OK"


  Scenario: Click Cancel in a confirmation dialog box
    Given I have a confirmation handler that clicks on "Cancel"
    When  I visit a page with a confirmation dialog box
    Then  I should not see a secret message "You pressed OK"
    And   I should not see a secret message "You pressed Cancel"
    When  I press "Show confirmation"
    Then  I should see a secret message "You pressed Cancel"
    