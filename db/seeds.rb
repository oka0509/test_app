# frozen_string_literal: true
30.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "user#{n + 1}"
  )
end

30.times do |n|
  Tag.create!(
    name: "category#{n + 1}"
  )
end

User.all.each do |user|
  user.diaries.create!(
    content: Faker::Lorem.paragraph(sentence_count: 7),
  )
end
