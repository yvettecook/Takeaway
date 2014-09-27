require 'order'

describe 'Order' do

	let(:order) { Order.new }
	let(:dish1) { double :dish, :name => 'trifle', :price => 3 }
	let(:dish2) { double :dish, :name => 'cake' , :price => 2 }
	
	it "should contain a list of items ordered" do
		expect(order.items).not_to be nil
	end

	it "should be able to add a dish to the order" do
		order.add(dish1, 4)
		expect(order.items).to include(['trifle', 3, 4])
	end

	it "should be able to get a line item total" do
		order.add(dish1, 4)
		expect(order.get_total(order.items[0])).to eq(12)
	end

	it "should be able to calculate grand total of order" do
		order.add(dish1, 4)
		order.add(dish2, 2)
		expect(order.get_grand_total).to eq(16)
	end


end