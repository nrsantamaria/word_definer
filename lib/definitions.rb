class Definition

  attr_accessor :definition

  @@definitions = []

  def initialize(definition)
    self.definition = definition
  end

  def Definition.all
    @@definitions
  end

  def save_definition
    @@definitions.push(self)
  end

  def Definition.clear
    @@definitions = []
  end
end
