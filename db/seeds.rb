require 'faker'
puts "🌱 Seeding spices..."

# sitting_capacity = 10..15
streams = %w!Red Orange Yellow Green Blue Violet!
subjects = %w!Reading Writing Maths Science Arts Music Physical-Education!
teachers = %w!Ms.Grande Tr.Bey Mrs.Cardi Mr.Bean!
genders = %w!Male Female!

# for x in sitting_capacity do
#     Stream.create(
#         sitting_capacity: x
#     )
# end

# for x in streams do
#     Stream.create(
#         streams: streams[rand(0...streams.size)]
#     )
# end

for x in subjects do
    Subject.create(
        name: x
    )
end

for x in teachers do
    Teacher.create(
        name: x,
        employee_id: rand(0000..1000)
        #subject_id: rand(1..Subject.all.size)
    )
end

60.times do
    Pupil.create(
        name: Faker::Name.name,
        age: rand(3..7),
        gender: genders[rand(0...genders.size)],
        parent_contact: Faker::Internet.email,
        teacher_id: rand(1..Teacher.all.size),
        stream_name: streams[rand(0...streams.size)],
        subject_id: rand(1..Subject.all.size)
    )
end

puts "✅ Done seeding!"