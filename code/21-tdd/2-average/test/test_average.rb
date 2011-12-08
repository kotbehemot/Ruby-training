#!/usr/bin/env ruby

require 'test/unit'
require_relative 'test_helper'
require 'average'

include Test::Unit

class AverageTest < TestCase

  def setup
  	
  end

  def test_average_for_integers
  	assert_equal 4, [5, 3].average
  	assert_equal 5.5, [9,2].average
  	[1000, 30000, 52252, 555555, 999325, 2430].each do |max|
  		assert_equal max.to_f/2, (0..max).inject([]){|sum, i| sum << i}.average
  	end
  end

  def test_average_for_floats
  	assert_equal 1.625, [1.2, 1.3, 1.8, 2.2].average
  	#assert_equal 0.3, [0.4, 0.2].average #floating point rounding error!
  end

  def test_average_for_negative_numbers
  	assert_equal -5, [-2, -8].average
  end

  def test_average_for_special_cases
  	assert_equal 0, [0, 0, 0].average
  end
end