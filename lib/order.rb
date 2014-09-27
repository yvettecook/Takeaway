class Order

	attr_accessor :items

	def initialize
		@items = []
	end

	def add(dish)
		items << [dish.name, dish.price]
	end




end