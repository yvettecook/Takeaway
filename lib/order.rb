class Order

	attr_accessor :items

	def initialize
		@items = []
	end

	def add(dish, quantity)
		items << [dish.name, quantity]
	end

end