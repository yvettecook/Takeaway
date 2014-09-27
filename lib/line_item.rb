class LineItem

	attr_reader :dish, :quantity

	def initialize(dish,quantity)
		@dish = dish
		@quantity = quantity
	end

	def price
		dish.price
	end

	def total
		price * quantity
	end

end