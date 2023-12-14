# frozen_string_literal: true
30.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "user#{n + 1}",
    password: 'password'
  )
end

User.all.each do |user|
  30.times do |n|
  user.diaries.create!(
    content: Faker::Lorem.paragraph(sentence_count: 40),
    created_at: Time.now - 2.days
  )
  end
end

Diary.all.each do |diary|
  tags = Tag.order('RAND()').limit(rand(1..4))
  tags.each do|tag|
    diary.take_tag(tag)
  end
end