require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )


require('pry-byebug')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({ 'name' => 'George Ramsey', 'funds' => 50})
customer1.save()

film1 = Film.new({ 'title' => 'Troy', 'price' => 10})
film1.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save()

binding.pry
nil