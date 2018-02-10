def total(prices)
  amount = 0 
  prices.each do | price |
    amount += price
  end
  amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

def each
  index = 0
  while index < self.length
    yield self[index]
    index += 1
  end
end

greeting = nil 

def run_block
  yield
end

run_block do
  greeting = "hello"
end

puts greeting


def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", refund(prices))

def show_discounts(prices)
  prices.each do |price|
    amount_off = price/3.00
    puts format("Your discount: $%.2f", amount_off)
  end
end

show_discounts(prices)