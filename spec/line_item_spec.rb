require 'line_item'

describe 'Line Item' do

	let(:item) { LineItem.new(dish1, 3) }
	let(:dish1) { double :dish, :price => 4 }

	it "should include the dish price" do 
		expect(dish1.price).to eq(4)
	end

	it "should include a quantity of the dish" do
		expect(item.quantity).to eq(3)
	end

	it "should be able to calculate dish total" do
		expect(item.total).to eq(12)
	end


end	