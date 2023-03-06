require 'faker'
puts "🌱 Seeding spices..."

streams = %w!Red Orange Yellow Green Blue Violet!
subjects = %w!Reading Writing Maths Science Arts Music Physical-Education!
teachers = %w!Ms.Grande Tr.Bey Mrs.Cardi Tr.Joe Miss.Wanda Mrs.North!
genders = %w!Male Female!

for x in streams do
    Stream.create(
        name: x
    )
end

for x in subjects do
    Subject.create(
        name: x
    )
end

for x in teachers do
    Teacher.create(
        name: x,
        employee_id: rand(0000..1000)
    )
end


30.times do
    Pupil.create(
        name: Faker::Name.name,
        age: rand(3..7),
        gender: genders[rand(0...genders.size)],
        parent_contact: Faker::Internet.email,
        teacher_id: rand(1...teachers.size),
        stream_name: streams[rand(0...streams.size)],
        subject_id: rand(1...subjects.size)
    )
end

puts "✅ Done seeding!"
