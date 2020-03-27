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
    sentences = self.split(/[.?!]/)
    #sentences = old_sentences.select{|i| i.length > 0}
    sentences.select!{|i| i.length > 0}
    binding.pry 
    sentences.length 
  end
end