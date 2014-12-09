require 'rubygems'
require 'twilio-ruby'

class Message

	attr_reader :body, :number

	def initialize(body, number)
		@body = body
		@number = number
	end

	def send
		account_sid = ENV['TAKEAWAY_TWILLIO_SID']
		auth_token = ENV['TAKEAWAY_TWILLIO_TOKEN']
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.messages.create(:body => body,
		    :to => number,
		    :from => "+441362788056")
		puts message.sid
	end

end
