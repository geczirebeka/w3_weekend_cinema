require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )


require('pry-byebug')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({ 'name' => 'George Ramsey', 'funds' => 50})
customer2 = Customer.new({ 'name' => 'Alex Coates', 'funds' => 40})
customer3 = Customer.new({ 'name' => ''})

customer1.save()
customer2.save()

film1 = Film.new({ 'title' => 'Troy', 'price' => 10})
film2 = Film.new({ 'title' => 'Gladiator', 'price' => 7})
film3 = Film.new({ 'title' => 'Die Hard', 'price' => 5})

film1.save()
film2.save()
film3.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket1.save()
ticket2.save()

binding.pry
nil