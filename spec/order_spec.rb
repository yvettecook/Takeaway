require 'order'

describe 'Order' do

	let(:order) { Order.new(customer1)}
	let(:dish1) { double :dish, :name => 'trifle', :price => 3 }
	let(:dish2) { double :dish, :name => 'cake' , :price => 2 }
	let(:customer1) { double :customer, :name => 'Yvette', :phone => '07989446889' }
	let(:takeaway) { double :takeaway }
	
	it "should contain a list of items ordered" do
		expect(order.items).not_to be nil
	end

	it "should have a customer" do
		expect(order.customer_name).not_to be nil
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

	it "should be able to save the grand total" do
		order.add(dish1, 4)
		order.add(dish2, 2)
		order.get_grand_total
		expect(order.grand_total).to eq(16)
	end

end