
#let's put all the students into an array

students = [ "Berta Gutierrez",
 "Megan Folsom",
 "Rolando Barbella",
 "James Hunter",
 "Abraham Thomas",
 "Roy Gardiner",
 "Jorja Tracy Hung",
 "Colin Frankish",
 "Ayaz Goulamabasse",
 "Kalle Malmiharju",
 "Andrey Krahmal",
 "Biwek Shrestha",
 "Mihai-Liviu Cojocar",
 "Makis Otman",
 "Nabin Rai",
 "Peter Saxon"
]
# and then we print them

puts "The students of my cohort at Makers Academy"
puts "-------------------"

students.each do |student|
	puts student
end

# finaly, we print the total

puts "Overall, we have #{students.length} great students"



