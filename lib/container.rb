class Container

  attr_reader :weight, :ingredients, :maximum_holding_weight
  attr_writer :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    ingredient_weight = ingredient.weight
    total_count = @maximum_holding_weight.to_f / ingredient_weight
    count = 0
    while count != total_count.to_i do
      @weight = @weight.to_f + ingredient_weight
      @ingredients << ingredient.name
      # ingredient.instance_variable_get(:@name)
      count += 1
    end
    @weight = @weight.round
  end

  def which_ingredient
    return @ingredients[0]
  end

  def how_many_ingredients
    return @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

end
