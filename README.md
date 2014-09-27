A programme to manage takeaway orders from customers, and text them confirmation of their order.

Functionality/Spec:

* List of dishes with prices
* Customers can place orders
* Customers will be:
	* shown a list of dishes to choose from
	* be able to add a quantity
	* exact total of their order
* Once an order is placed, the customer will be sent a text message confirmation


Tools Used:

* Ruby 
* IRB
* Sublime Text 3
* RSpec
* GitHub
* Twilio API

Aims:

* Keep classes small, with limited individual responsibilities
* TDD - refactor after each test passes
* Create simple first (MVP)
* Use London Style testing consistently



Step 1: CRC Cards

Dish | Menu, Line Item
------------------------------------------

* have name
* have price


Menu | Dish, Order
------------------------------------------

* add dishes to menu 
* display all dishes and prices


Order | Menu, Line Item, Customer
------------------------------------------

* (receives order from customer)
* pass customer order through Line Items to calculate total for each dish
* calculate grand total
* verify order with takeaway


Line Item | Dish, Order
------------------------------------------

* calculate cost of each item dependent on quantity


Takeaway | Order, Message
------------------------------------------

* verify order
* text confirmation to customer


Customer | Order 
------------------------------------------

* provide order choices
* provide name, address, phone number


Message | Order, Customer
------------------------------------------

* include customer and order details
* communicate with Twilio
