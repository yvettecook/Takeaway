require 'order'

describe 'Order' do

	let(:order) { Order.new }
	let(:dish1) { double :dish, :name => 'trifle', :price => 4 }
	let(:dish2) { double :dish, :name => 'brownie', :price => 5 }
	
	it "should contain a list of items ordered" do
		expect(order.items).not_to be nil
	end

	it "should be able to add a dish to the order" do
		order.add(dish1)
		expect(order.items).to include(['trifle', 4])
	end


end