When "I visit a page making an AJAX call returning text" do
  @browser.goto('http://localhost:7000/page_for_ajax_call_returning_text')
end

When "I visit a page making an AJAX call returning javascript, executed automatically" do
  @browser.goto('http://localhost:7000/page_for_ajax_executing_the_response_automatically')
end

When "I visit a page making an AJAX call returning javascript and eval the response" do
  @browser.goto('http://localhost:7000/page_for_ajax_evaling_the_response')
end

When "I wait for the AJAX call to finish" do
  # TODO: use new syntax with the edge version of celerity
  # @browser.join_threads
  @browser.page.getEnclosingWindow().getThreadManager().joinAll(10000)
end
