# Extracting logic to methods
# Branching if/else

# but first, some prep-work => Comparison operators
# = This is to assign a value to something
value = 0

# == This is trying to compare two expressions
10 == 9 # false
10 == 10 # true
10 == 10.to_i # true
10 == 10.to_f # false
"hello" == "bye" # false
"hello" == "hello" # true

# != Not equal to
10 != 9 # true
10 != 10 # false
10 != 10.to_i # false
10 != 10.to_f # true
"hello" != "bye" # true
"hello" != "hello" # false

# > Greater than
100 > 100 # false
100 > 101 # false
100 > 99 # true

# >= Greater or equal than
100 >= 100 # true
100 >= 101 # false
100 >= 99 # false

# < Less than
100 < 100 # false
100 < 101 # true
100 < 99 # false

# <= Less or equal than
100 <= 100 # true
100 <= 101 # true
100 <= 99 # false

# Special scenarios
10 == 10 # true
10 == 10.0 # true
10 === 10 # true
10 === 10.0 # true [!]
10.eql?(10.0) # false [!] This one is just comparing types, so they're not the same
