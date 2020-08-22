# Ref: https://elixir-lang.org/getting-started/basic-types.html
# Hello World
IO.puts "Hello World!"
IO.puts "====================================================================="

# String Interpolation
value = "Some Value"
IO.puts "String Interpolation: #{value}"
IO.puts "====================================================================="

# Basic Types
IO.puts "Integers: #{1} #{0xAD} #{0o56} #{0x57}"
IO.puts "Float: #{3.5}"
IO.puts "Boolean: #{false} #{true}, is_boolean: #{is_boolean(true)}"
IO.puts "Atom / Symbol: #{:some_symbol}, is_atom: #{is_atom(:some_atom)}"
IO.puts "String: #{"A String"}"
IO.puts "List (linear lookup, cheap updation or addtion): #{[1, "foo"]}"
# protocol String.Chars not implemented for var of type Tuple
# IO.puts "Tuple (constant looup, costly updation or addition): #{{1, "foo"}}"
IO.puts "====================================================================="

# Basic arithmetic
IO.puts "Addition: #{3 + 5}"
IO.puts "Subtraction: #{4 - 8}"
IO.puts "Multiplication: #{2 * 5}"
IO.puts "Division (always returns float): #{10 / 2}"
IO.puts "Use `div/2` to return integer on division: #{div 5, 2}"
IO.puts "Use `rem/2` to return reminder: #{div 5, 2}"
IO.puts "Use `round/1` to roundoff value: #{round(3.49)} #{round(3.50)}"
IO.puts "Use `trunc/1` to truncate decimals value: #{trunc(3.49)} #{trunc(3.50)}"
IO.puts "`true`, `false` & `nil` are special atoms: #{true == :true} #{nil == :nil}"
IO.puts "====================================================================="

# Strings
hello = "hellö"
IO.puts "Strings are binaries: #{is_binary hello}"
IO.puts "Number of bytes (ö takes two bytes): #{byte_size hello}"
IO.puts "Length of string: #{String.length hello}"
IO.puts "Upper case: #{String.upcase hello}"
IO.puts "====================================================================="

# Anonymous functions
add = fn a, b -> a + b end
# IO.puts "Add function: #{add}"
IO.puts "Add two numbers: #{add.(2, 4)}"
IO.puts "is_function: #{is_function(add)}"
IO.puts "is_function/2: #{is_function(add, 2)}"
IO.puts "is_function/1: #{is_function(add, 1)}"
IO.puts "====================================================================="

# (Linked) Lists
l1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
l2 = ['g', 'c']
IO.puts "l1: #{l1}; l2: #{l2}"
IO.puts "Concat: #{l1 ++ l2}"
IO.puts "Subtract: #{l1 -- l2}"
IO.puts "Head hd(l1): #{hd(l1)}"
IO.puts "Tail tl(l1): #{tl(l1)}"
IO.puts "====================================================================="

# Tuples
t = {'a', :b, 300}
IO.puts "Size of tuple: #{tuple_size t}"
IO.puts "get 2nd element: #{elem t, 1}"
# Replace 2nd element; returns a new tuple
t = put_elem(t, 1, :c)
IO.puts "new 2nd element: #{elem(t, 1)}"
IO.puts ": #{}"
IO.puts "====================================================================="
