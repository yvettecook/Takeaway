require 'menu'

describe 'Menu' do

	let (:menu) { Menu.new }
	let (:dish1) { double :dish, :name => 'trifle', :price => 4 }
	
	it "should be a list of dishes and prices" do
		menu.add(dish1)
		expect(menu.dish_list).to include(['trifle', 4])
	end

end