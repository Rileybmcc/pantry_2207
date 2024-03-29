require './lib/pantry'
require './lib/ingredient'

RSpec.describe Pantry do

  before :each do
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)

    @recipe2.add_ingredient(@ingredient1, 2)
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 1)
  end

  it 'can return stock as empty hash' do
    expect(@pantry.stock).to eq({})
  end

  it 'can check stock for ingredient' do
    expect(@pantry.stock_check(@ingredient1)).to eq(0)
  end

  it 'can restock item' do
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    expect(@pantry.stock_check(@ingredient1)).to eq(15)
  end

  it 'can restock new item' do
    @pantry.restock(@ingredient2, 7)

    expect(@pantry.stock_check(@ingredient2)).to eq(7)
  end

  it 'can evaluate if there are enough ingredients in pantry' do

    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)

    @pantry.restock(@ingredient2, 7)

    expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)

    @pantry.restock(@ingredient2, 1)

    expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(true)

  end

end
