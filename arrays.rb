
# Array Challenge

# Challenge

# Create an array called four_letter_animals with the following animals (in this order):

# Calf
# Duck
# Elephant
# Goat
# Lamb
# Lion
# Mule
# Dog

# four_letter_animals = [ "Calf", "Duck", "Elephant", "Goat", "Lamb", "Lion", "Mule", "Dog" ]

# Add Puma to the end of the array
    # four_letter_animals.push("Puma")

# Insert Joey after Goat and before Lamb
    # four_letter_animals.insert(4, 'Joey')

# Delete Dog
    # four_letter_animals.delete_at(7)

# Reverse the order of the array
    # four_letter_animals.reverse

# Replace Elephant with Foal
    # four_letter_animals[2] = "Foal"
    
# Add Bear to the end of the array
    # four_letter_animals.push("Bear")

 # Reverse the order of the array again
    # four_letter_animals.reverse

# puts four_letter_animals

# Beast Mode

# Ask the user for three or more grocery items, store them in a list (array). It's OK to ask three times. 
# Try using the `.length` method to tell the user how many items are in their list.
# Sort the list alphabetically before showing it to the user
# Are you using gets.chomp multiple times? A 3.times loop might tidy your code.
# If the user tries to add 'Ice Cream', 
# secretly replace it with 'Broccoli'
# Ask the user for quantities too. 
# Show a nice looking list back to the user.

groceries = [ ]
grocery_item_name = ""
grocery_item_qty = 0
# TODO - read about copy/dup for Arrays


while groceries.length < 3
    # puts groceries.inspect - Shows what items are being pushed into the array
    puts "Please enter a grocery item"
    grocery_item_name = gets.chomp
    puts "Please enter the quantity for this item"
    grocery_item_qty = gets.chomp.to_i
    grocery_item = {
        name: "",
        quantity: 0
    }
    grocery_item[:name] = grocery_item_name
    grocery_item[:quantity] = grocery_item_qty
    groceries.push(grocery_item)
end

new_groceries = groceries.map do |grocery_item|
    if grocery_item[:name] == "Ice Cream"
        # new_grocery_item = grocery_item
        grocery_item[:name] = "Broccoli"
    end
    grocery_item
end

# puts new_groceries.inspect # Shows pushed items at the end of the loop

# I know there's a more efficient way to do this, but for now it works!

puts "There are #{new_groceries.length} items in your shopping cart:"
puts "---------------------------------------"
puts "Name: #{new_groceries[0][:name]}, Quantity: #{new_groceries[0][:quantity]}"
puts "Name: #{new_groceries[1][:name]}, Quantity: #{new_groceries[1][:quantity]}"
puts "Name: #{new_groceries[2][:name]}, Quantity: #{new_groceries[2][:quantity]}"

