require './app'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_h1_hello
    get '/tom'
    assert last_response.body.include?("Hello Tom!"), 'Should say "Hello Tom!" but doesn\'t'
  end
  def test_title_name
    get '/tom'
    assert last_response.body.include?("<title>Greet Tom</title>"), "Title should be 'Greet Tom'"
  end
end