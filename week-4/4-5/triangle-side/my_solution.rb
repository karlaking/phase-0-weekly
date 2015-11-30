# I worked on this challenge with Walter Kerr.

# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and b + c > a and c + a > b
    p true 
  else 
    p false 
  end
end 

valid_triangle?(10,10,100)