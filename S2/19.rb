# Numbers
1 + 2 # 3
5 + 6 # 11
10 * 2 # 20
10 / 4 # This will outpud 2, it drops the decimals
10.0 / 4 # This will output, it has a float so it takes decimals into account
10 / 4.0 # Same
10 / 4.to_f # Same
(10 / 4).to_f # Won't output 2.5 but 2.0. The order is important. Here is divides integers and then transforms the result into a float

x = 5
y = 10
y / x # You can also use variables

"5" * 2 # Will output "55". Multiplying strings will concat them as many times as you're multiplying them

# But it has its uses!
puts "I am a line"
puts "-" * 20
puts "I'm another line"
20.times { print "-" } # You can also use the times method
20.times { puts "Hi" } # Puts will output each iteration in a new termninal line
20.times { puts rand(10) } # You can also use this iterator with randomization of numbers
