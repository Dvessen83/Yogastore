@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

@shopping_cart = []
@price_total = 0


def welcome_customer
 puts "Welcome to the Yogastore!\n\n"
end

def show_menu
  @products.each do |product|
    puts "#{product[:reference_number]} #{product[:name]} #{product[:price]} Euro"
  end
end

def menu_select
  print "Please enter reference number of the item you would like to buy: "
  gets.chomp.to_i
end

def add_to_cart(ref)
    new_item = @products.find {|x| x[:reference_number] == ref}
    @shopping_cart << new_item
end

def view_shopping_cart
  puts "This is currently in your shopping cart: "
  @shopping_cart.each do |item|
    puts "#{item[:reference_number]} #{item[:name]} $#{item[:price]} "
  end
end

def add_to_total
  @shopping_cart.each do |item|
    @price_total += item[:price]
    puts "Your current total is $#{@price_total}"
  end
end






welcome_customer
show_menu
add_to_cart(menu_select)
view_shopping_cart
add_to_total
