Feature: Access content in an iframe
  In order to verify contents inside an iframe
  the development team should be able to 
  access the DOM inside the iframe
  
Scenario: iframe with contents from another domain
  When I visit google inside an iframe
  And  I press "I'm feeling lucky"
  Then I should see "An "I'm Feeling Lucky" search means" in the iframe
  And  I should not see "Some text in the surrounding page" in the iframe
  And  I should see "Some text in the surrounding page" in the main page
  And  I should not see "An "I'm Feeling Lucky" search means" in the main page
  