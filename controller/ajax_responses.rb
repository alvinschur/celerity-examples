
class AjaxResponsesController < Ramaze::Controller
  map '/ajax_responses'
  
  
  def returning_text
    'Simon says: surprise!xxx'
  end

#  def returning_javascript
#  end

end
