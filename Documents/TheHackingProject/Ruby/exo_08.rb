puts "Chose a number pal"
print "> "
number = gets.chomp.to_i

while number > 0 do
  number -= 1
  puts "#{number}"
end
