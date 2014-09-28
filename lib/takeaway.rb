class Takeaway

	def verify(order)
		raise "Order total is too high" if order.grand_total > 100
	end

end