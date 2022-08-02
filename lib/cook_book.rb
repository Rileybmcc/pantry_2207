class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(thing)
    @recipes << thing
  end


end
