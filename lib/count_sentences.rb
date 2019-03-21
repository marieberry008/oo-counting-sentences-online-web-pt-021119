require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

   def count_sentences
     binding.pry
    self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
  
  def count_sentences_words
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size
  end

end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences_words