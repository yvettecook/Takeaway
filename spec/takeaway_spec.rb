require 'takeaway'

describe 'Takeaway' do 

	let(:takeaway) { Takeaway.new }
	let(:order) { double :order, :grand_total => 101 }

	it "should verify that orders don't cost more than 100" do
		expect(lambda {takeaway.verify(order)} ).to raise_error(RuntimeError)
	end


	
end
