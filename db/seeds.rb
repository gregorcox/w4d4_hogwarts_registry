require_relative('../models/student.rb')


Student.delete_all()

house1= 




student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Griffindor",
  "age" => "12"
  })
student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Griffindor",
  "age" => "13"
  })
student3 = Student.new({
  "first_name" => "Hermoine",
  "last_name" => "Granger",
  "house" => "Griffindor",
  "age" => "10"
  })
student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => "15"
  })


  student1.save()
  student2.save()
  student3.save()
  student4.save()
