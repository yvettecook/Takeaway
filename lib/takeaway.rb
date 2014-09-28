class Takeaway

	def verify(order)
		raise "Order total is too high" if order.grand_total > 100
	end

	def comp_message(order)
		return "Thank you #{order.customer_name}! Your order was placed, and will be delivered in an hour"
	end

end