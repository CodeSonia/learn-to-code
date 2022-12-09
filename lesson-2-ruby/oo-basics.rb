#convention to use Camel Case
class Pizza
    #:base is a symbol
    attr_reader :base, :price
    attr_accessor :toppings

    def initialize(base)
        @base = base
        #%w is writing words
        @toppings = %w[sauce cheese]
        @price = 7.50
    end 
end

class Pepperoni < Pizza 
    def initialize
        #extends the base
        super("standard")
        @toppings = %w[sauce cheese pepperoni]
        @price = price + 1.0
    end 
end

class Driver
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Customer
    attr_reader :name, :address
    def initialize(name, address)
        @name = name
        @address = address
    end
end

class Delivery
    attr_reader :cost, :driver, :customer, :order
    def initialize(cost, driver, customer, order)
        @cost = cost
        @driver = driver
        @customer = customer
        @order = order
    end
end

class Order
    attr_accessor :pizzas
    def initialize
        @pizzas = []
    end

    def cost 
        cost = 0
        pizzas.each do |pizza|
            cost += pizza.price
    end
    cost
end
end

p = Pizza.new("thin")
#create an instance/initialises it 
#new is a method, calling the initialiser  
puts p.inspect

p2 = Pepperoni.new
# the double arrows are adding to the array
# p2.toppings.push "anchovies" can be the same 
p2.toppings << "anchovies"
puts p2.inspect

c = Customer.new("Alex", "10 Whitechapel")
d = Driver.new("Gray")
o = Order.new
o.pizzas << p
o.pizzas << p2
delivery = Delivery.new(1000, d, c, o)

puts o.cost + delivery.cost
puts delivery.inspect