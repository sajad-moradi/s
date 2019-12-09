array = []
puts "Do you have any number?"
input_number = gets.chomp
array.push(input_number.to_i)
  until input_number.downcase == "done"
    if input_number != input_number.to_i.to_s
    else
      puts "Do you have another number?"
      input_number = gets.chomp
      array.push(input_number.to_i)
    end
  end
puts "The highest number is: #{array.max}"
puts "The lowest number is: #{array.min}"
puts "The sum of all the numbers are: #{array.sum}"
puts "You have inputted #{array.length} numbers"
# puts "The average of the numbers are: 6.5"
# puts "These are all the even numbers: 6, 8"
# puts "These are all the numbers: 5, 6, 7, 8"
# puts "There are some prime numbers: 5, 7"
