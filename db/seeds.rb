require_relative('../models/student.rb')
require_relative('../models/house.rb')


Student.delete_all()
House.delete_all()

house1= House.new({
  "house_name" => "Gryffindor",
  "logo_url" => "https://images-mm.s3.amazonaws.com/HP_Gryf_Metal_Pin1_POP.jpg"
  })
house2= House.new({
  "house_name" => "Ravenclaw",
  "logo_url" => "https://www.thestoreofrequirement.com.au/assets/full/2069.jpg"
  })
house3= House.new({
  "house_name" => "Hufflepuff",
  "logo_url" => "https://www.thestoreofrequirement.com.au/assets/full/2068.jpg"
  })
house4= House.new({
  "house_name" => "Slytherin",
  "logo_url" => "https://www.thestoreofrequirement.com.au/assets/full/2066.jpg"
  })
house1.save()
house2.save()
house3.save()
house4.save()


student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => "12"
  })
student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id,
  "age" => "13"
  })
student3 = Student.new({
  "first_name" => "Hermoine",
  "last_name" => "Granger",
  "house_id" => house1.id,
  "age" => "10"
  })
student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house_id" => house4.id,
  "age" => "15"
  })


  student1.save()
  student2.save()
  student3.save()
  student4.save()
