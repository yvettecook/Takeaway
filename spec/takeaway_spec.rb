require 'takeaway'

describe 'Takeaway' do 

	let(:takeaway) { Takeaway.new }
	let(:order) { double :order, :grand_total => 101, :customer_name => 'Yvette' }

	it "should verify that orders don't cost more than 100" do
		expect(lambda {takeaway.verify(order)} ).to raise_error(RuntimeError)
	end

	it "should compose message to customer" do
		expect(takeaway.comp_message(order)).to eq("Thank you Yvette! Your order was placed, and will be delivered in an hour")
	end


	
end
