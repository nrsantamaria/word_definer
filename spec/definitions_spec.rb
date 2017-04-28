require('rspec')
require('definitions')

describe(Definitions) do
  describe('#initialize') do
    it('will create a new instance of a definition') do
      test_definition = Definitions.new('space rock')
      expect(test_definition.definition()).to(eq('space rock'))
    end
  end
end
