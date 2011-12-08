require 'test/unit'
require_relative 'test_helper'
require 'anagram'

include Test::Unit

class ExampleTest < TestCase

  def setup
  	
  end

  def test_string_responds_to_anagram
    s = String.new
    assert_respond_to(s, :anagram?)
  end

  def test_positive_anagrams
  	assert "abc".anagram?("cab")
    assert "Kajak".anagram?("jakka"), "anagram powinien ignorowac wielkosc liter"
    assert "ruby".anagram?("bury")
    assert "Kajak Krzysztof".anagram?("tfoja kszyrzkka"), "anagram jest zbyt wrazliwy na bledy ortograficzne"
    assert "".anagram?(""), "anagram pustego slowa jest swoim anagramem"
  end

  def test_negative_anagrams
    assert !"Garry Fisher".anagram?("Garry Klein")
    assert !"".anagram?("cos")
    assert !"cos".anagram?(String.new)
    assert !"sin".anagram?("cos")
    assert !"string".anagram?(:pretty => :error), "anagram powinien zwracac false dla argumentow nie dajacych sie porownac ze stringiem"

  end

end