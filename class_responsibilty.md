##Classes and Responsibilities

Dish | Menu, Line Item
------------------------------------------

- [x] have name
- [x] have price


Menu | Dish, Order
------------------------------------------

- [x] add dishes to menu 
- [x] display all dishes and prices


Order | Menu, Line Item, Customer
------------------------------------------

- [x] add items to order
- [x] add customer to order
- [x] pass customer order through Line Items to calculate total for each dish
- [x] calculate grand total
- [x] verify order with takeaway


Line Item | Dish, Order
------------------------------------------

- [x] calculate cost of each item dependent on quantity


Takeaway | Order, Message
------------------------------------------

- [x] verify order
- [ ] text confirmation to customer


Customer | Order 
------------------------------------------

- [x] provide name, address, phone number


Message | Order, Customer
------------------------------------------

- [ ] include customer and order details
- [ ] communicate with Twilio
