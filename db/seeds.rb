# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
VegeTag.create([
  { name: 'キャベツ' },
  { name: 'レタス' },
  { name: '人参' },
  { name: 'じゃがいも' },
  { name: 'さつまいも' },
  { name: 'きゅうり' },
  { name: 'なす' },
  { name: 'ピーマン' },
  { name: 'ほうれん草' },
  { name: 'トマト' },
  { name: 'その他' }
])

User.create!(
  email: 'init@com',
  name: '初期ユーザー',
  password: '123456'
)

User.all.each do |user|
  user.farms.create!(
    [
      { name: '岡山駅',
      address: '岡山駅',
      feature: '岡山駅にあります。'
      image: File.open("./public/野菜.jpeg")}
    ]
  )
end
