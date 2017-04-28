class Definitions

  attr_accessor :definition

  @@definitions = []

  def initialize(definition)
    self.definition = definition
  end

  def Definitions.all
    @@definitions
  end

  def save_definition
    @@definitions.push(self)
  end
end
