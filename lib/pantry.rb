class Pantry
  attr_reader :stock

  def initialize
    @stock = {}

  end

  def stock_check(item)
    if @stock[:item] == nil
      0
    else
      @stock[:item]
    end
  end



end
