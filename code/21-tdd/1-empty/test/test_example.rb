require 'test/unit'
require_relative 'test_helper'
require 'example'

include Test::Unit

class ExampleTest < TestCase

  def setup
  	
  end

  def test_fails_miserably
  	assert false
  end
end