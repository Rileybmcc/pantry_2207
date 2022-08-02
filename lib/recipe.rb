class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(item, num)
    @ingredients_required[item] += num
  end

  def ingredients
    @ingredients_required.keys
    # @ingredients_required.keys.map { |food| food.name } #I think you wanted the ingredient instance, but this will return legible names
  end

end
