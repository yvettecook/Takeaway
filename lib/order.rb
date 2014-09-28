class Order

	attr_accessor :items, :customer, :grand_total

	def initialize(customer)
		@items = []
		@customer = [customer]
		@grand_total = grand_total
	end

	def add(dish, quantity)
		items << [dish.name, dish.price, quantity]
	end

	def get_total(line)
		line1 = LineItem.new(line[1], line[2])
		return line1.total
	end

	def get_grand_total
		totals = items.map do | line |
			total = get_total(line.to_a)
		end
		@grand_total = totals.inject(:+)
	end

end