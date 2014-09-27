require 'menu'

describe 'Menu' do

	let(:menu) { Menu.new }
	let(:dish1) { double :dish, :name => 'trifle', :price => 4 }
	let(:dish2) { double :dish, :name => 'brownie', :price => 5 }
	
	it "should be a list of dishes and prices" do
		menu.add(dish1)
		expect(menu.dish_list).to include(['trifle', 4])
	end

	it "should return a list of dishes and prices" do
		menu.add(dish1)
		menu.add(dish2)
		expect(menu.display_menu).to eq(["trifle: 4", "brownie: 5"])
	end


end