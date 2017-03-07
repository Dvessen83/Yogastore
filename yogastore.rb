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
  ref_number = gets.chomp.to_i
  #puts ref_number
end

def add_to_cart(ref)
    new_item = @products.find {|x| x[:reference_number] == ref}
    #puts "ref is #{ref}"
    #puts "new item is#{new_item}"




  @shopping_cart << new_item;
  puts "This is in your cart: #{@shopping_cart}"


end



welcome_customer
show_menu
#menu_select
add_to_cart(menu_select)
