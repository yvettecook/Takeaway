require 'order'

describe 'Order' do

	let(:order) { Order.new }
	
	it "should contain a list of items ordered" do
		expect(order.items).not_to be nil
	end

end