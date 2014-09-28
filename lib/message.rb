require 'rubygems'
require 'twilio-ruby'
 
class Message

	attr_reader :body, :number

	def initialize(body, number)
		@body = body
		@number = number
	end

	def send
		account_sid = 'ACa0f6c24b2e646a4346dffee0ba1eb94d'
		auth_token = 'c041fa1f3752f7ffc41e97a45b8ca66d' 
		@client = Twilio::REST::Client.new account_sid, auth_token
		 
		message = @client.account.messages.create(:body => body,
		    :to => number,     
		    :from => "+441362788056")
		puts message.sid
	end


end
