x = 7
out = case x do
  1 ->
    "One"
  2 ->
    "Two"
  y when y < 8 and y > 2 ->
    "Smaller"
  9 ->
    "Nine"
  _ ->
    "Any"
end
IO.puts out
