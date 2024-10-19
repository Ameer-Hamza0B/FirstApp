# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# db/seeds.rb
# Find or create teachers
# db/seeds.rb

# First, let's check if there are existing teachers and students
teacher_john = Teacher.find_or_create_by(name: "John Doe") do |teacher|
    teacher.subject = "Mathematics"
    teacher.age = 40
  end
  
  # Adding the two students
  student_ameer = User.find_or_create_by(username: "Ameer") do |user|
    user.age = 20
  end
  
  student_hamza = User.find_or_create_by(username: "Hamza") do |user|
    user.age = 21
  end
  
  # Assigning students to John Doe
  teacher_john.students << student_ameer unless teacher_john.students.include?(student_ameer)
  teacher_john.students << student_hamza unless teacher_john.students.include?(student_hamza)
  
  # Make sure to seed any other existing teachers and users
  Teacher.find_or_create_by(name: "Jane Smith") do |teacher|
    teacher.subject = "Physics"
    teacher.age = 35
  end
  
  Teacher.find_or_create_by(name: "Emily Johnson") do |teacher|
    teacher.subject = "Chemistry"
    teacher.age = 29
  end
  
  Teacher.find_or_create_by(name: "Sheraz") do |teacher|
    teacher.subject = "Biology"
    teacher.age = 45
  end
  
  # Run this to seed other students if you had them previously in the database
  [
    { username: "Ahmad", age: 22 },
    { username: "Raza", age: 23 },
    { username: "Salman", age: 24 },
    { username: "Rizwan", age: 25 },
    { username: "Dolphin", age: 26 }
  ].each do |student_data|
    User.find_or_create_by(username: student_data[:username]) do |user|
      user.age = student_data[:age]
    end
  end
    