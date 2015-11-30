# OO Basics: Student


# I worked on this challenge with Peter Wood.
# This challenge took me 2.5 hours.


# Pseudocode
# DEFINE function 'average' that takes no parameters 
#   SUM 'scores' 
#     DIVIDE by the length of 'scores' 
#       RETURN result  
# DEFINE function 'letter_grade' that takes no parameters
#   CALL function 'average'
#    CREATE integer 'student_average'        
#      CREATE hash 'grade_threshold'
#          KEYS are grade letters 
#            PASS each key the minimum for that grade 
#      ITERATE over 'grade_threshold'
#        COMPARE each value to the return of 'average' 
#            IF return of 'average' >= value 
#                RETURN key
#            ELSE 
#                RETURN 'F'
# DEFINE function 'linear_search' that takes two parameters 'students_in' & 'name_in'
#    ITERATE over 'students_in'
#      IF the 'first_name' of 'students_in' equals 'name_in' 
#        RETURN index of 'students_in'
#      ELSE 
#        RETURN -1 
#
# DEFINE function 'binary_search' with parameters 'students_in' and 'name_in'
#    CREATE array 'students' which equals 'students_in' 
#        SORT 'students' alphabetical ascending 
#      IF the middle element of 'students_in' equals 'name_in'
#       RETURN the middle index
#      ELSE IF 'students_in' <= 1
#        RETURN -1 
#      ELSE IF 'name_in' > 'stundents_in' 
#        PASS 'students' all elements greater than middle element in 'students'
#        CALL 'binary_search' with parameters 'students' and 'name_in'
#      ELSE IF 'name_in' < 'students_in' 
#        PASS 'students' all elements less than middle element in 'students'
#        CALL 'binary_search' with parameters 'students' and 'name_in'

# Initial Solution

class Student
  attr_accessor :scores, :first_name
  
  def initialize(name,scores)   #Use named arguments!
    @first_name = name 
    @scores = scores 
  end
  def average
    sum = 0 
    for i in @scores do sum += i end  
    return sum/scores.length 
  end  

  def letter_grade 
    student_average = average 
    grade_threshold = {'A'=>90, 'B'=> 80, 'C'=> 70, 'D'=>60}
    grade_threshold.each do |key,value| 
      if student_average >= value
        return key
      elsif student_average < 60
        return 'F'
      end 
    end
  end 
    
    
end

students = [Student.new('Alex', [100,100,100,0,100]),Student.new('Pete', [100,100,100,0,100]),Student.new('Karla', [100,100,100,0,100])]


p students[0].average 
p students[0].letter_grade 

def linear_search(students_in, name_in)
  students_in.each_index do |i| 
    if students_in[i].first_name == name_in 
      return i
    end
  end 
  return -1 
end       

def binary_search(students_in,name_in)
  students = students_in.sort{|a,b| a.first_name <=> b.first_name}
  middle_element = (students_in.length/2) 
  if name_in == students[middle_element].first_name
    return middle_element 
  elsif middle_element < 1  
    return -1 
  elsif name_in < students[middle_element].first_name
    larger_half = students_in.length-middle_element
    students.slice!(middle_element,larger_half)  
  elsif name_in > students[middle_element].first_name
    smaller_half = students_in.length-middle_element
    students.slice!(0,smaller_half)  
  end
  binary_search(students,name_in)
end 

p binary_search(students,'Alex')  
p binary_search(students,'Pete')  
p binary_search(students,'Karla')  
p binary_search(students,'Not a Student')  

# Reflection
=begin
What concepts did you review in this challenge?
We reviewed the flow of and if, elsif, and else statement. 
What is still confusing to you about Ruby?
The logic got very confusing  in our binary_search method. I am still confused on 
how to best pass variables correctly from classes into new methods. I believe we could
have gone further with the last method, but had already spent two hours on the challenge.
What are you going to study to get more prepared for Phase 1?  
Classes and attr readers in Ruby! 
=end
  