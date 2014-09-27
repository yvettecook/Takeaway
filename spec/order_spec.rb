require 'order'

describe 'Order' do

	let(:order) { Order.new }
	let(:dish1) { double :dish, :name => 'trifle' }
	
	it "should contain a list of items ordered" do
		expect(order.items).not_to be nil
	end

	it "should be able to add a dish to the order" do
		order.add(dish1, 3)
		expect(order.items).to include(['trifle', 3])
	end


end