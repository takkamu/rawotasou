# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customers = Customer.create!(
  [
    {email: 'taro@test.com', name: '太郎', password: 'password', experience_point: '90', level: '3', introduction: 'よろしくお願いします'},
    {email: 'takahiro@test.com', name: 'たかひろ', password: 'password', experience_point: '50', level: '2', introduction: '埼玉県を拠点に活動しています！'},
    {email: 'yuuma@test.com', name: 'ゆうま', password: 'password', experience_point: '30', level: '2', introduction: 'とんこつラーメンが好きです'},
    {email: 'mayu@test.com', name: 'まゆ', password: 'password', experience_point: '50', level: '2', introduction: '3日に1回ラー活してます'},
    {email: 'airi@test.com', name: 'あいり', password: 'password', experience_point: '40', level: '2', introduction: '家系最高！'},
    {email: 'takumi@test.com', name: 'たくみ', password: 'password', experience_point: '40', level: '2', introduction: 'つけ麺も食べるよ'},
    {email: 'moe@test.com', name: 'もえ', password: 'password', experience_point: '30', level: '2', introduction: 'ラーメンヲタクの主婦です'},
    {email: 'masaya@test.com', name: 'まさや', password: 'password', experience_point: '50', level: '2', introduction: 'フォローお願いします'},
    {email: 'ayaka@test.com', name: 'あやか', password: 'password', experience_point: '40', level: '2', introduction: 'いっぱい投稿したいと思います'},
    {email: 'hiroki@test.com', name: 'ひろき', password: 'password', experience_point: '40', level: '2', introduction: 'ラー活楽しい！！'}
  ]
)

Ramen.create!(
  [
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen1.jpg"), filename:"ramen1.jpg"), restaurant_name: '麺処田辺', men_genre: 'ramen', soup_genre: 'shoyu', impression: '久々に来たけどやっぱりおいしい', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen13.jpg"), filename:"ramen13.jpg"), restaurant_name: '山虎', men_genre: 'tsukemen', soup_genre: 'tonkotsumiso', impression: '毎週これるくらいハマってます。', customer_id: Customer.find(2).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen2.jpg"), filename:"ramen2.jpg"), restaurant_name: '麺処田辺', men_genre: 'ramen', soup_genre: 'shoyu', impression: '田辺しか勝たん！最高に美味しいチャーシュー。', customer_id: Customer.find(10).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen3.jpg"), filename:"ramen3.jpg"), restaurant_name: 'たまた', men_genre: 'ramen', soup_genre: 'shio', impression: '駅近で行きやすいが、いつも混んでいる。さっぱりで食べやすい！', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen4.jpg"), filename:"ramen4.jpg"), restaurant_name: 'らーめん加賀', men_genre: 'ramen', soup_genre: 'others', impression: '五目あんかけがとにかく美味しい！ガッツリいきたい方におすすめ', customer_id: Customer.find(4).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen11.jpg"), filename:"ramen11.jpg"), restaurant_name: 'よし田', men_genre: 'tsukemen', soup_genre: 'seafood', impression: 'つけ麺と言ったらここ。毎日混雑しているが、今日は比較的空いてた。安定に美味しい。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen5.jpg"), filename:"ramen5.jpg"), restaurant_name: 'らーめん加賀', men_genre: 'ramen', soup_genre: 'others', impression: 'ちょっと変わったラーメン屋。五目あんかけらーめんが美味しい。', customer_id: Customer.find(9).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen6.jpg"), filename:"ramen6.jpg"), restaurant_name: '博多いちえ', men_genre: 'ramen', soup_genre: 'tonkotsu', impression: '本格博多豚骨を味わいたい時によくきます。替え玉もたくさん。', customer_id: Customer.find(8).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen7.jpg"), filename:"ramen7.jpg"), restaurant_name: '雅', men_genre: 'ramen', soup_genre: 'shoyu', impression: '近所なので家族でよく食べにきます！お子様メニューもあってきやすいです。', customer_id: Customer.find(4).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen8.jpg"), filename:"ramen8.jpg"), restaurant_name: 'かえで', men_genre: 'ramen', soup_genre: 'shoyu', impression: '夜遅くまでやっているので仕事終わりによくきます。安定に美味しい醤油ラーメン', customer_id: Customer.find(7).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen14.jpg"), filename:"ramen14.jpg"), restaurant_name: 'そば学園', men_genre: 'shirunasi', soup_genre: 'shoyu', impression: '久々まぜそばデー。初めて来た。有名店らしいが、自分には合わなかった。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen9.jpg"), filename:"ramen9.jpg"), restaurant_name: '山田家', men_genre: 'ramen', soup_genre: 'tonkotsushoyu', impression: '家系の中でもおすすめの場所。店内は狭いですが、味は絶品。', customer_id: Customer.find(3).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen12.jpg"), filename:"ramen12.jpg"), restaurant_name: 'つけ鬼', men_genre: 'tsukemen', soup_genre: 'tonkotsushoyu', impression: '神レベルで美味しい。つけ麺で一番好きかもしれない。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen10.jpg"), filename:"ramen10.jpg"), restaurant_name: 'すゐむ', men_genre: 'ramen', soup_genre: 'miso', impression: '野菜らーめんはボリュームがあって美味しい。', customer_id: Customer.find(6).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen11.jpg"), filename:"ramen11.jpg"), restaurant_name: 'よし田', men_genre: 'tsukemen', soup_genre: 'seafood', impression: 'トッピングもボリュームがすごい。テーブル席もあるので家族でも来れます。', customer_id: Customer.find(5).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen12.jpg"), filename:"ramen12.jpg"), restaurant_name: 'つけ鬼', men_genre: 'tsukemen', soup_genre: 'tonkotsushoyu', impression: 'いつも行列のできるお店。それでも食べたくなるほど美味しいつけ麺。', customer_id: Customer.find(8).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen13.jpg"), filename:"ramen13.jpg"), restaurant_name: '山虎', men_genre: 'tsukemen', soup_genre: 'tonkotsushoyu', impression: 'メニューは一つしかないが、それだけでやっていけるほど美味しいです。おすすめ！', customer_id: Customer.find(9).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen14.jpg"), filename:"ramen14.jpg"), restaurant_name: 'そば学園', men_genre: 'shirunasi', soup_genre: 'shoyu', impression: 'いろんなアレンジが楽しめるまぜそば屋さん', customer_id: Customer.find(7).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen15.jpg"), filename:"ramen15.jpg"), restaurant_name: '夢良', men_genre: 'ramen', soup_genre: 'shoyu', impression: '最近家の近くにできたので行ってみたらびっくり！とても美味しい！リピート確定です', customer_id: Customer.find(10).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen8.jpg"), filename:"ramen8.jpg"), restaurant_name: 'かえで', men_genre: 'ramen', soup_genre: 'shoyu', impression: 'さっぱり美味しい醤油ラーメン。何杯でもいける！', customer_id: Customer.find(2).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen16.jpg"), filename:"ramen16.jpg"), restaurant_name: 'かっちゃんらーめん', men_genre: 'ramen', soup_genre: 'miso', impression: '元気のいい店主とそれに合ったらーめん。元気が出る店です。', customer_id: Customer.find(5).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen17.jpg"), filename:"ramen17.jpg"), restaurant_name: '印と麺', men_genre: 'ramen', soup_genre: 'curry', impression: 'カレーラーメン屋に初めて行きました。ハマりそう、、おいし、、', customer_id: Customer.find(3).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen18.jpg"), filename:"ramen18.jpg"), restaurant_name: '海里', men_genre: 'ramen', soup_genre: 'shio', impression: 'わかりにくいところにある店ですが、味は最高。何杯でも食べれてしまう。。', customer_id: Customer.find(9).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen17.jpg"), filename:"ramen17.jpg"), restaurant_name: '印と麺', men_genre: 'ramen', soup_genre: 'curry', impression: 'なにこれ初めて食べる味。めちゃくちゃ美味しい。リピあり。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen19.jpg"), filename:"ramen19.jpg"), restaurant_name: 'まる八', men_genre: 'ramen', soup_genre: 'miso', impression: 'さっぱり味噌で老若男女みんな食べれる味。優しい味がします。', customer_id: Customer.find(8).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen20.jpg"), filename:"ramen20.jpg"), restaurant_name: 'まる八', men_genre: 'ramen', soup_genre: 'miso', impression: '地元では有名なお店。店内も広いので家族でも来れます。カウンターもあるよ。', customer_id: Customer.find(6).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen21.jpg"), filename:"ramen21.jpg"), restaurant_name: 'らあ丸', men_genre: 'ramen', soup_genre: 'others', impression: '微妙かも。いろんな味がごっちゃになってる感じ。もう来ないかな。', customer_id: Customer.find(4).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen9.jpg"), filename:"ramen9.jpg"), restaurant_name: '山田家', men_genre: 'ramen', soup_genre: 'tonkotsushoyu', impression: '安定の家系。ここの家系は他の家系よりスープが濃い。若者には人気な店だと思う。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen18.jpg"), filename:"ramen18.jpg"), restaurant_name: '海里', men_genre: 'ramen', soup_genre: 'shio', impression: 'ちょっと変わった塩ラーメン。食べてみればわかる。', customer_id: Customer.find(2).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen22.jpg"), filename:"ramen22.jpg"), restaurant_name: 'たまき', men_genre: 'tsukemen', soup_genre: 'shoyu', impression: 'たまたま通りかかったので食べてみたら美味しい！美味しすぎる、、', customer_id: Customer.find(8).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen23.jpg"), filename:"ramen23.jpg"), restaurant_name: 'たまき', men_genre: 'tsukemen', soup_genre: 'shoyu', impression: 'めちゃくちゃ美味しいつけ麺を見つけてしまった。一人でも通えそう。', customer_id: Customer.find(10).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen24.jpg"), filename:"ramen24.jpg"), restaurant_name: 'ラーメン笑笑', men_genre: 'ramen', soup_genre: 'tonkotsu', impression: 'いつも賑やかな店内です。ここの豚骨ラーメンがもう最高。ハマってます。', customer_id: Customer.find(5).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen25.jpg"), filename:"ramen25.jpg"), restaurant_name: 'しゅう屋', men_genre: 'ramen', soup_genre: 'shoyu', impression: '昔ながらの醤油ラーメンで落ち着く味です。コッテリに飽きたらここ。', customer_id: Customer.find(6).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen26.jpg"), filename:"ramen26.jpg"), restaurant_name: '一郎', men_genre: 'ramen', soup_genre: 'miso', impression: 'もやしたっぷりですぐお腹に溜まってしまう。でもスープも麺も美味しい。大好きです。', customer_id: Customer.find(4).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen25.jpg"), filename:"ramen25.jpg"), restaurant_name: 'しゅう屋', men_genre: 'ramen', soup_genre: 'shoyu', impression: '友達といつも飲み会の後に訪れます。さっぱりで飽きない味。', customer_id: Customer.find(2).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen25.jpg"), filename:"ramen25.jpg"), restaurant_name: 'しゅう屋', men_genre: 'ramen', soup_genre: 'shoyu', impression: 'シンプルイズベスト。元祖醤油らーめん。飲み会の後に最高です。', customer_id: Customer.find(1).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen27.jpg"), filename:"ramen27.jpg"), restaurant_name: '火火', men_genre: 'ramen', soup_genre: 'tonkotsu', impression: 'スルスルいけちゃいます！家の近くにあるのでよく行きますが、何回食べても飽きません。', customer_id: Customer.find(9).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen28.jpg"), filename:"ramen28.jpg"), restaurant_name: '蘭', men_genre: 'ramen', soup_genre: 'shoyu', impression: '並んでも食べたくなるほど美味しい。友達とよく行きますが、店内が狭いので一人がきやすいかも。。', customer_id: Customer.find(8).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen1.jpg"), filename:"ramen1.jpg"), restaurant_name: '麺処田辺', men_genre: 'ramen', soup_genre: 'shoyu', impression: 'インスタ映えするチャーシューメン。味ももちろん絶品です。', customer_id: Customer.find(7).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen13.jpg"), filename:"ramen13.jpg"), restaurant_name: '山虎', men_genre: 'tsukemen', soup_genre: 'tonkotsumiso', impression: 'つけ麺といったらここ。コッテリなのに重たくないスラスラ美味しいつけ麺', customer_id: Customer.find(6).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen20.jpg"), filename:"ramen20.jpg"), restaurant_name: 'まる八', men_genre: 'ramen', soup_genre: 'miso', impression: '友人に連れられて初めてきたが、今まで食べてきた味噌ラーメンで一番うまい。行列に耐えられるならおすすめの店。', customer_id: Customer.find(5).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen11.jpg"), filename:"ramen11.jpg"), restaurant_name: 'よし田', men_genre: 'tsukemen', soup_genre: 'seafood', impression: '安くて美味しい。スープが濃厚で食べ終わった後の出し汁と混ぜた時最高です。', customer_id: Customer.find(4).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen14.jpg"), filename:"ramen14.jpg"), restaurant_name: 'そば学園', men_genre: 'shirunasi', soup_genre: 'shoyu', impression: '小腹が空いた時にパッと食べれるまぜそば。独特の味がするが個人的に大好き。', customer_id: Customer.find(3).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen27.jpg"), filename:"ramen27.jpg"), restaurant_name: '火火', men_genre: 'ramen', soup_genre: 'tonkotsu', impression: '麺もトッピングも美味しい。さっぱり豚骨！', customer_id: Customer.find(2).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen6.jpg"), filename:"ramen6.jpg"), restaurant_name: '博多いちえ', men_genre: 'ramen', soup_genre: 'tonkotsu', impression: 'おすすめのとんこつラーメン屋です！比較的空いているので見かけたら入っちゃいます。ほんとに美味しい！', customer_id: Customer.find(10).id },
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ramen19.jpg"), filename:"ramen19.jpg"), restaurant_name: 'まる八', men_genre: 'ramen', soup_genre: 'miso', impression: '東京で味噌ならここ。他の店とレベルが違う。さっぱり味噌なのでガッツリいきたい人は大盛りがいいかも？', customer_id: Customer.find(1).id }
  ]
)

LevelSetting.create!(
  [
    {level: 2, thresold:30},
    {level: 3, thresold:70},
    {level: 4, thresold:120},
    {level: 5, thresold:180},
    {level: 6, thresold:250},
    {level: 7, thresold:330},
    {level: 8, thresold:420},
    {level: 9, thresold:520},
    {level: 10, thresold:630},
    {level: 11, thresold:750},
    {level: 12, thresold:880},
    {level: 13, thresold:1020},
    {level: 14, thresold:1170},
    {level: 15, thresold:1330},
    {level: 16, thresold:1500},
    {level: 17, thresold:1680},
    {level: 18, thresold:1870},
    {level: 19, thresold:2070},
    {level: 20, thresold:2280},
    {level: 21, thresold:2500},
    {level: 22, thresold:2730},
    {level: 23, thresold:2970},
    {level: 24, thresold:3220},
    {level: 25, thresold:3480},
    {level: 26, thresold:3750},
    {level: 27, thresold:4030},
    {level: 28, thresold:4320},
    {level: 29, thresold:4620},
    {level: 30, thresold:4930},
    {level: 31, thresold:5250},
    {level: 32, thresold:5580},
    {level: 33, thresold:5920},
    {level: 34, thresold:6270},
    {level: 35, thresold:6630},
    {level: 36, thresold:7000},
    {level: 37, thresold:7380},
    {level: 38, thresold:7770},
    {level: 39, thresold:8170},
    {level: 40, thresold:8580},
    {level: 41, thresold:9000},
    {level: 42, thresold:9430},
    {level: 43, thresold:9870},
    {level: 44, thresold:10320},
    {level: 45, thresold:10780},
    {level: 46, thresold:11250},
    {level: 47, thresold:11730},
    {level: 48, thresold:12220},
    {level: 49, thresold:12720},
    {level: 50, thresold:13230}
    ]
)

Admin.create!(
  [
    {email: 'admin@test.com', password: 'testadad'}
  ]
)