array = []
puts "Do you have any number?"
input_number = gets.chomp
if input_number = input_number.to_i.to_s || input_number.downcase != done
  array.push(input_number.to_i)
  loop do
    puts "Do you have another number?"
    input_number = gets.chomp
    break if input_number.downcase == "done"
    next if input_number != input_number.to_i.to_s
    array.push(input_number.to_i)
  end
else
  puts "The highest number is: #{array.max}"
  puts "The lowest number is: #{array.min}"
  puts "The sum of all the numbers are: #{array.sum}"
  puts "You have inputted #{array.length} numbers"
  puts "The average of the numbers are: #{array.sum / array.length}"
  a = array.select { |num| num.even? }
  puts "These are all the even numbers: #{a.join(", ")}"
  puts "These are all the numbers: #{array.join(", ")}"
  b = array.select { |el| (1..el).select { |ell| el % ell == 0 }.length == 2 }
  puts "There are some prime numbers: #{b.join(", ")}"
end
