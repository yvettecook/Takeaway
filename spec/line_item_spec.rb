require 'line_item'

describe 'Line Item' do

	let(:item) { LineItem.new(2, 3) }

	it "should include a quantity of the dish" do
		expect(item.quantity).to eq(3)
	end

	it "should be able to calculate dish total" do
		expect(item.total).to eq(6)
	end


end	