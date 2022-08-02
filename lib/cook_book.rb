class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(thing)
    @recipes << thing
  end

  def ingredients
    shopping_list = []
    @recipes.each do |dish|
      dish.ingredients.each do |item|
        shopping_list << item.name
      end
    end
    shopping_list.uniq
  end



end
