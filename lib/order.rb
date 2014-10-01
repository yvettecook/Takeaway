class Order

	attr_accessor :items, :customer_name, :customer_phone, :grand_total

	def initialize(customer)
		@items = []
		@customer_name = (customer.name)
		@customer_phone = (customer.phone)
		@grand_total = grand_total
	end

	def add(dish, quantity)
		item = Struct.new(:name, :price, :quantity)
		items << item.new(dish.name, dish.price, quantity)
	end

	def get_total(line)
		line1 = LineItem.new(line[1], line[2])
		line1.total
	end

	def get_grand_total
		@grand_total = items.map {|line| get_total(line.to_a)}.inject(:+)
	end

end