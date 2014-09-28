require 'customer'

describe "Customer" do 

	let(:customer) { Customer.new('Yvette', '07989446889') }

	it "should have a name" do
		expect(customer.name).not_to be nil
	end

	it "should have a phone number" do
		expect(customer.phone).not_to be nil
	end

end