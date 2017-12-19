class Ingredient

  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight)
    kg_weight = weight * 0.001
    Ingredient.new(name, kg_weight)
  end

end
