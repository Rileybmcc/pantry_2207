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

  def highest_calorie_meal
    total = @recipes.map { |list| list.total_calories }.max
    @recipes.find { |recipe| recipe.total_calories == total }
  end

end
