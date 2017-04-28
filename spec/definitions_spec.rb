require('rspec')
require('definitions')

describe(Definition) do

  before do
    Definition.clear
  end

  describe('#initialize') do
    it('will create a new instance of a definition') do
      test_definition = Definition.new('space rock')
      expect(test_definition.definition()).to(eq('space rock'))
    end
  end

  describe('#save_definition') do
    it('will save all definitions to an array') do
      test_definition = Definition.new('space rock')
      test_definition.save_definition()
      test2_definition = Definition.new('A relatively small, inactive, rocky body orbiting the Sun.')
      test2_definition.save_definition()
      expect(Definition.all()).to(eq([test_definition, test2_definition]))
    end
  end
end
