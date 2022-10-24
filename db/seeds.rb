# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'example@example.com', password: 'supersecretpassword')

student1 = Student.create(name: "Angel", last_name: "Guemez")
student2 = Student.create(name: "Andrea", last_name: "Olarte")
student3 = Student.create(name: "Bad", last_name: "Bunny")

course1 = Course.create(name: "Matematicas")
course2 = Course.create(name: "Matematicas")
course3 = Course.create(name: "Matematicas")
course4 = Course.create(name: "Algebra")
course5 = Course.create(name: "Algebra")
course6 = Course.create(name: "Algebra")
course7 = Course.create(name: "Fisica")
course8 = Course.create(name: "Psicologia")
course9 = Course.create(name: "Psicologia II")
course10 = Course.create(name: "Astrologia")
course11 = Course.create(name: "Tik Tok")

course1.students << [student1]
course2.students << [student2]
course3.students << [student3]
course4.students << [student1]
course5.students << [student2]
course6.students << [student3]
course7.students << [student1]
course8.students << [student2]
course9.students << [student1]
course10.students << [student2]
course11.students << [student1]

course1.grades.create(rate: 10, title: "1st Quarter")
course1.grades.create(rate: 3, title: "2nd Quarter")
course1.grades.create(rate: 10, title: "3th Quarter")
course1.grades.create(rate: 4, title: "4th Quarter")
course2.grades.create(rate: 9, title: "1st Quarter")
course2.grades.create(rate: 9, title: "2nd Quarter")
course2.grades.create(rate: 5, title: "3th Quarter")
course2.grades.create(rate: 4, title: "4th Quarter")
course3.grades.create(rate: 4, title: "1st Quarter")
course3.grades.create(rate: 3, title: "2nd Quarter")
course3.grades.create(rate: 1, title: "3th Quarter")
course3.grades.create(rate: 0, title: "4th Quarter")
course4.grades.create(rate: 9, title: "1st Quarter")
course4.grades.create(rate: 8, title: "2nd Quarter")
course4.grades.create(rate: 4, title: "3th Quarter")
course4.grades.create(rate: 10, title: "4th Quarter")
course5.grades.create(rate: 7, title: "1st Quarter")
course5.grades.create(rate: 7, title: "2nd Quarter")
course5.grades.create(rate: 8, title: "3th Quarter")
course5.grades.create(rate: 10, title: "4th Quarter")
course6.grades.create(rate: 1, title: "1st Quarter")
course6.grades.create(rate: 2, title: "2nd Quarter")
course7.grades.create(rate: 8, title: "1st Quarter")
course7.grades.create(rate: 10, title: "2nd Quarter")
course7.grades.create(rate: 4, title: "3th Quarter")
course7.grades.create(rate: 10, title: "4th Quarter")
course8.grades.create(rate: 10, title: "1st Quarter")
course8.grades.create(rate: 8, title: "2nd Quarter")
course8.grades.create(rate: 10, title: "3th Quarter")
course8.grades.create(rate: 10, title: "4th Quarter")