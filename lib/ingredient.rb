class Ingredient
  attr_reader :name,
              :unit

  def initialize(hash)
    @name = hash[:name]
    @unit = hash[:unit]
  end



end
