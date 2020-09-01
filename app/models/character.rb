class Character
  attr_reader :name, :house, :patronus, :role

  def initialize(argument)
    @name = argument[:name]
    @role = argument[:role]
    @house = argument[:house]
    @patronus = argument[:patronus]
  end
end
