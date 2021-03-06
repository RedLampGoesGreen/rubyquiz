# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
99.times do |n|
  n += 1
  level = n
  Level.create(level_rank: level)
  9.times do |m|
    ans = "Dis Amazing Answer" + m.to_s + n.to_s
    Answer.create(answer_text: ans)
    m = m+1
  end
  que = "Such Interesting Question No." + n.to_s
  Question.create(answer_id: n, level_id: n, question_text: que )
  cat = "Dis Interesting No." + n.to_s
  Category.create(category_name: cat, question_ids:[n])
end