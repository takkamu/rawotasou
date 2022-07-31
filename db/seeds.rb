# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customers = Customer.create!(
  [
    {email: 'takahiro@test.com', name: 'たかひろ', password: 'password', introduction: 'よろしくお願いします'},
    {email: 'yuuma@test.com', name: 'ゆうま', password: 'password', introduction: 'とんこつラーメンが好きです'},
    {email: 'mayu@test.com', name: 'まゆ', password: 'password', introduction: '3日に1回ラー活してます'},
    {email: 'airi@test.com', name: 'あいり', password: 'password', introduction: '家系最高！'},
    {email: 'takumi@test.com', name: 'たくみ', password: 'password', introduction: 'つけ麺も食べるよ'},
    {email: 'moe@test.com', name: 'もえ', password: 'password', introduction: 'ラーメンヲタクの主婦です'},
    {email: 'masaya@test.com', name: 'まさや', password: 'password', introduction: 'フォローお願いします'},
    {email: 'ayaka@test.com', name: 'あやか', password: 'password', introduction: 'いっぱい投稿したいと思います'},
    {email: 'hiroki@test.com', name: 'ひろき', password: 'password', introduction: 'ラー活楽しい！！'}
  ]
)

Ramen.create!(
  [
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen1.jpg"), filename:"ramen1.jpg"), restaurant_name: '池田家', men_genre: 'ramen', soup_genre: 'shoyu', impression: 'おいしかった', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen2.jpg"), filename:"ramen1.jpg"), restaurant_name: '田中家', men_genre: 'tsukemen', soup_genre: 'miso', impression: 'これはうまい', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen3.jpg"), filename:"ramen3.jpg"), restaurant_name: '中身家', men_genre: 'shirunashi', soup_genre: 'tonkotsu', impression: '最高！', customer_id: Customer.find(1).id }
  ]
)

LevelSetting.create!(
  [
    {level: 2, thresold:30},
    {level: 3, thresold:70},
    {level: 4, thresold:120},
    {level: 5, thresold:180},
    {level: 6, thresold:250}
    ]
)

Admin.create!(
  [
    {email: 'admin@test.com', password: 'testadad'}
  ]
)