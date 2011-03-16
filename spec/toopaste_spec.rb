require File.dirname(__FILE__) + '/spec_helper'

describe  'Toopaste' do
  include Rack::Test::Methods
  
  def toopaste
    Sinatra::Application
  end
  
  it 'should run successfully' do
    get '/'
    last_response.status.should == 200
  end
end