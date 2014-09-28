require 'message'

describe 'Message' do

	let(:message) { Message.new('test', number) }
	let(:number) { '00000000000' }

	it "should initialize with a body" do
		expect(message.body).to eq('test')
	end

	it "should initialize with a number" do
		expect(message.number).to eq('00000000000')
	end

	
	
end