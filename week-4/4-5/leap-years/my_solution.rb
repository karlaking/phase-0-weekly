# Calculate a Grade

# I worked on this challenge [with: ].


# Your Solution Below

def leap_year?(year)
  if year %4==0 and year %100!=0
    p true
  elsif
    year %400==0 
    p true
  elsif 
    year %100==0
    p false
  else
    p false 
  end 
end 
  
leap_year?(2000)