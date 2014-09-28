require_relative 'lib/dish.rb'
require_relative 'lib/menu.rb'
require_relative 'lib/order.rb'
require_relative 'lib/takeaway.rb'
require_relative 'lib/message.rb'
require_relative 'lib/customer.rb'
require_relative 'lib/line_item.rb'

	yvette = Customer.new('yvette', '+447989446889')
	oolong = Dish.new('oolong', 3)
	earl_grey = Dish.new('earl grey', 2)
	order1 = Order.new(yvette)
	order1.add(earl_grey, 4)
	order1.add(oolong, 1)
	order1.get_grand_total
	timberyard = Takeaway.new
