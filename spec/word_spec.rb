require('rspec')
require('word')

describe(Word) do

  before do
    Word.clear
  end

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

  describe('#initialize') do
    it('will add create an empty array of definitions for the new word') do
      test_word = Word.new('Asteroid')
      expect(test_word.definitions()).to(eq([]))
    end
  end

  describe('#save') do
    it('will add new words to an array') do
      test_word = Word.new('Asteroid')
      test_word.save()
      test_word2 = Word.new('Star')
      test_word2.save()
      expect(Word.all()).to(eq([test_word, test_word2]))
    end
  end

  describe('#add_definitions') do
    it('will add definitions to an array') do
      test_word = Word.new('Asteroid')
      test_word.add_definitions('space rock')
      expect(test_word.definitions()).to(eq(['space rock']))
    end
  end

  describe('.find') do
    it('will find the word based on their id') do
      test_word = Word.new('Asteroid')
      test_word.save()
      test_word2 = Word.new('Star')
      test_word2.save()
      expect(Word.find(1)).to(eq(test_word))
    end
  end
end
