class String
  def anagram?(another_string)
  	self.downcase.split('').sort == another_string.downcase.split('').sort
  rescue
  	false
  end

  alias_method :is_anagram?, :anagram?
end