

puts "Welcome to my wonderful Math game! Press 1 to enter!"

print "> "
enter = $stdin.gets.chomp

if enter =="1"
  puts "What is the sum of 1 + 2 ?"
  print "> "
  answer = $stdin.gets.chomp


if answer == "3"
  puts "Good job!"
else
  puts "WROOOOOOOOOOOOONG!"
end
end