require 'takeaway'

describe 'Takeaway' do 

	let(:takeaway) { Takeaway.new }
	let(:order) { double :order, :grand_total => 101, :customer_name => 'Yvette', :customer_phone => number }
	let(:number) { double :number }
	let(:message) { double :message, :send => true }

	it "should verify that orders don't cost more than 100" do
		expect(lambda {takeaway.verify(order)} ).to raise_error(RuntimeError)
	end

	it "should compose message to customer" do
		expect(takeaway.comp_message(order)).to eq("Thank you Yvette! Your order was placed, and will be delivered in an hour")
	end

	# it "should send a message to a customer" do
	# 	expect(takeaway.send_message(order)).to eq('Message sent')
	# end

	
end
