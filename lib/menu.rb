class Menu

	attr_accessor :dish_list

	def initialize
		@dish_list = []
	end

	def add(dish)
		dish_list << [dish.name, dish.price]
	end

	def display_menu
		@display_menu = dish_list.collect do | dish |
			"#{dish[0]}: #{dish[1]}"
		end
	end



end