class Word

  attr_accessor :word_name, :id, :definitions

  @@words = []

  def initialize(word_name)
    self.word_name = word_name
    self.id = @@words.length.+(1)
    self.definitions = []
  end



end
