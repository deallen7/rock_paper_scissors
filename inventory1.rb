#My inventory
My_Inventory = {
	"Beer" => 10,
	"Wine" => 20,
	"Bourbon" => 40,
}

#Display Inventory
puts "BAR INVENTORY:"
My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
end

#Loop Inventory Interaction
loop do
puts " "
puts "'ADD', 'EDIT' or 'DELETE' from INVENTORY? (JUST TYPE 'EXIT' TO EXIT)"
answer = gets.chomp.upcase

if answer == "ADD"
	puts "What item would you like to add?"
	new_item = gets.chomp
	puts "How many should I add?"
	new_item_amount = gets.chomp
	My_Inventory["#{new_item}"] = new_item_amount
	puts " "
	puts "YOUR NEW INVENTORY:"
	My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
	end
elsif answer == "EDIT"
	puts "Which item would you like to edit?"
	My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
	end
	item = gets.chomp.capitalize
	puts "Ok, we are editing #{item}. How much #{item} is there now?"
	amount = gets.chomp.to_i
	My_Inventory["#{item}"] = amount 
	puts " "
	puts "YOUR NEW INVENTORY:" 
	My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
	end
elsif answer == "DELETE"
	puts "Which item would you like to delete?"
	My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
	end
	delete_item = gets.chomp.capitalize
	puts "Ok, I'll delete #{delete_item}."
	My_Inventory.delete ("#{delete_item}")
	puts " "
	puts "YOUR NEW INVENTORY:" 
	My_Inventory.each do |value, key|
	puts "#{value} - #{key}"
	end
end

break if answer == "EXIT"

end
