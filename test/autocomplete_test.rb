require File.expand_path(File.join(File.dirname(__FILE__), '../../../../test/test_helper')) 

class AutocompleteTest < Test::Unit::TestCase
  include Grosser::Autocomplete
  
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::CaptureHelper
  
  def setup
    @controller = Class.new do
      def url_for(options)
        url =  "http://www.example.com/"
        url << options[:action].to_s if options and options[:action]
        url
      end
    end
    @controller = @controller.new
  end
  
  def test_something
    #later...
  end
end
