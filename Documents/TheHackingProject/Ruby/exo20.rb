puts "choisis un nombre"
print '> '
steps = gets.chomp.to_i
floor = "#"
i = 0

puts 'voici la pyramide'
  until steps == i do
    i += 1
    puts floor
    floor = floor + "#"
  end