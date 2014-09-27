require 'dish'

	

describe 'Dish' do

	let (:dish) { Dish.new }

	it "should have a name" do
		expect(dish.name).not_to be nil?
	end

	
	
end