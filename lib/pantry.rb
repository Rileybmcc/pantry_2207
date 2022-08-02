class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)

  end

  def stock_check(item)
    if @stock[item] == nil
      0
    else
      @stock[item]
    end
  end

  def restock(item, num)
    @stock[item] += num
  end

  def enough_ingredients_for?(list)
    gerard = list.ingredients_required.map { |item, num| @stock[item] >= num }
    gerard.uniq.count == 1 && gerard.uniq == [true]
  end

end
