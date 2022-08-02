require './lib/ingredient'
RSpec.describe Ingredient do

  before :each do
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  it 'can return ingredient name' do
    expect(@ingredient1.name).to eq("Cheese")
  end

  it 'can retun unit of measure for ingredient' do
    expect(@ingredient1.unit).to eq("oz")
  end

  it 'can return calories in ingredient' do
    expect(@ingredient1.calories).to eq(50)
  end

end
