
class AjaxResponsesController < Ramaze::Controller
  map '/ajax_responses'
  
  
  def returning_text
    'Simon says: surprise!xxx'
  end

  def returning_javascript
    response['Content-Type'] = 'application/x-javascript'
    "$('#secret_message').append('Message for you sir!')"
  end

end
