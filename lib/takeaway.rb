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
		return "Thank you #{order.customer_name}! Your order was placed, and will be delivered in an hour"
	end

end