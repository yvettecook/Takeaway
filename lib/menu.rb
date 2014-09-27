class Menu

	attr_accessor :dish_list

	def initialize
		@dish_list = []
	end

	def add(dish)
		dish_list << [dish.name, dish.price]
	end



end