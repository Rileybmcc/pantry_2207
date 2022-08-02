require ' ./lib/ingredient'
RSpec.decribe Ingredient do

  before :each do

    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

  end

  it 'can return ingredient name' do
    expect(ingredient1.name).to eq("Cheese")
  end

  xit 'can retun unit of measure for ingredient' do
    expect(ingredient1.unit).to eq("oz")
  end

  xit 'can return calories in ingredient' do
    expect(ingredient1.calories).to eq(50)
  end
  
end
