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
    # binding.pry
    self.split(/[.!?]+/).size
    # reject {|x| x.empty?}
  end

end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences_words