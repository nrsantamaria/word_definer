require('rspec')
require('word')

describe(Word) do
  describe('#initialize') do
    it('will create a new word') do
      test_word = Word.new('Asteroid')
      expect(test_word.word_name()).to(eq('Asteroid'))
    end
  end
  describe('#initialize') do
    it('will add an id to the new word') do
      test_word = Word.new('Asteroid')
      expect(test_word.id()).to(eq(1))
    end
  end
end
