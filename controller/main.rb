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
    @examples = list_names(examples).sort
  end

  
  private
  
  def examples
    view_dir = File.dirname(__FILE__) + '/../view'
    views = Dir[view_dir + '/*.xhtml']
    views.reject! do |file| 
      file.include?('error.xhtml') or file.include?('page.xhtml') or file.include?('index')
    end
  end

  def list_names(examples)
    url = 'http://localhost:7000/'
    examples.map do |path| 
      File.basename(path, '.xhtml')
    end
  end
end
