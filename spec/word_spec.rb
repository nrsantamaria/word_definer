require('rspec')
require('word')

describe(Word) do
  describe('#initialize') do
    it('create a new word') do
      test_word = Word.new('Asteroid')
      expect(test_word.word_name()).to(eq('Asteroid'))
    end
  end
end
