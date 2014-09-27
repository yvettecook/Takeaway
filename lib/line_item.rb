class LineItem

	attr_reader :price, :quantity

	def initialize(price,quantity)
		@price = price
		@quantity = quantity
	end

	def total
		price * quantity
	end

end