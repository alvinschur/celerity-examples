# Default url mappings are:
#  a controller called Main is mapped on the root of the site: /
#  a controller called Something is mapped on: /something
# If you want to override this, add a line like this inside the class
#  map '/otherurl'
# this will force the controller to be mounted on: /otherurl

class MainController < Ramaze::Controller
  layout '/page'

  # the index action is called automatically when no other action is specified
  def index
    @title = "Welcome to Ramaze!"
  end

  def on_page_load
    @title = "Testing javascript run on page load"
  end
  
  def buttons_with_javascript
    @title = "Testing javascript called from a button"
  end

  def page_for_ajax_call_returning_text
    @title = "Testing an AJAX call made on page load"
  end

  def page_for_ajax_executing_the_response_automatically
    @title = 'Testing an AJAX that automatically executes the response'
  end
  
  # the string returned at the end of the function is used as the html body
  # if there is no template for the action. if there is a template, the string
  # is silently ignored
  def notemplate
    "there is no 'notemplate.xhtml' associated with this action"
  end
end
