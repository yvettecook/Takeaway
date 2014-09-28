class Takeaway

	def verify(order)
		raise "Order total is too high" if order.grand_total > 100
		return "Order is valid"
	end


	def send_message(order)
		body = comp_message(order)
		message = Message.new(body, order.customer_phone)
		message.send	
		return 'Message sent' if message.send
	end

	def comp_message(order)
		return "Thank you #{order.customer_name}! Your order was placed, and will be delivered at #{hour_ahead}"
	end

	def hour_ahead
		t = Time.now
		ahead = t + (60 * 60 + 10)
		ahead.to_s[11..15]
	end

end