require 'dish'

describe 'Dish' do

	let (:dish) { Dish.new('cake', 4) }

	it "should have a name" do
		expect(dish.name).not_to be nil?
	end

	it "should have a price" do
		expect(dish.price).not_to be nil?
	end

end