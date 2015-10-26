# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(grade)
  if grade >= 0 and grade <= 59
    p "F"
  elsif grade >= 60 and grade <= 69
    p "D"
  elsif grade >= 70 and grade <=79
    p "C"
  elsif grade >= 80 and grade <= 89
    p "B"
  else grade >=90 and grade <= 100
    p "A"
  end 
end
  
  get_grade(89)