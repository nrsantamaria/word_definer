class Word

  attr_accessor :word_name, :id, :definitions

  @@words = []

  def initialize(word_name)
    self.word_name = word_name
    self.id = @@words.length.+(1)
    self.definitions = []
  end

  def Word.all
    @@words
  end

  def save
    @@words.push(self)
  end

  def Word.clear
    @@words = []
  end

  def add_definitions(definition)
    @definitions.push(definition)
  end

  def Word.find(id)
    found_word = nil
    @@words.each do |word|
      if word.id == id
        found_word = word
      end
    end
    found_word
  end

  def Word.sort
    @@words.sort! { |a,b| a.word_name <=> b.word_name }
  end
end
