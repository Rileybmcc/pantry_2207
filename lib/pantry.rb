class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)

  end

  def stock_check(item)
    if @stock[:item] == nil
      0
    else
      @stock[:item]
    end
  end

  def restock(item, num)
    @stock[:item] += num

  end

end
