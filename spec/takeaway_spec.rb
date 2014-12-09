require 'takeaway'
require 'timecop'

describe 'Takeaway' do

	let(:takeaway) { Takeaway.new }
	let(:order) { double :order, :grand_total => 101, :customer_name => 'Yvette', :customer_phone => number }
	let(:number) { double :number }
	let(:message) { double :message, :send => true }

	it "should verify that orders don't cost more than 100" do
		expect(lambda {takeaway.verify(order)} ).to raise_error(RuntimeError)
	end

	before do
		Timecop.freeze('2014-09-28 20:46:44 +0100')
	end

	it "should be able to calculate an hour from message time" do
		expect(takeaway.hour_ahead).to eq('21:46')
	end

	it "should compose message to customer" do
		expect(takeaway.comp_message(order)).to eq("Thank you Yvette! Your order was placed, and will be delivered at 21:46")
	end

end
