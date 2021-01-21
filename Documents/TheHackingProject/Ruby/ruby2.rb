puts "année de naissance?"
birthyear = gets.chomp.to_i

i = 0
while birthyear < 2020
  birthyear += 1
  i += 1
  puts "in #{birthyear}, you were #{i} years old"
end
