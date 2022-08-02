require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

RSpec.describe CookBook do

  before :each do
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    
  end
  it 'can add recipe and return recipes' do

    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
  end

  it 'can find ingredients for multiple recipes' do

    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    expect(@cookbook.ingredients).to eq(["Cheese", "Macaroni", "Ground Beef", "Bun"])

  end

  xit 'can return ingredients for cookbook' do
    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)

    @recipe2.add_ingredient(@ingredient1, 2)
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 1)

    expect(@cookbook.ingredients).to eq(["Cheese", "Macaroni", "Ground Beef", "Bun"])

  end

  xit 'can find the highest calorie meal' do

    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)

    @recipe2.add_ingredient(@ingredient1, 2)
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 1)

    expect(@cookbook.highest_calorie_meal).to eq()

  end

end
