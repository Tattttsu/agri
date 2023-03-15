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
  [
    {
      email: 'init@com',
      name: 'ユーザー',
      password: '123456',
      role: 2
    },
    {
      email: 'example@gmail.com',
      name: 'テストユーザー',
      password: '123456',
      role: 0
    },
    {
      email: 'example2@gmail.com',
      name: '農家用テスト',
      password: '123456',
      role: 1
    }
  ]
)

User.find(1).farms.create!(
  [
    { name: '道の駅　奥津温泉',
      address: '道の駅　奥津温泉',
      feature: "見晴らしがよい高台にあり、奥津温泉街が一望できます。
      物産館の中にある「温泉亭」では、地域でとれた山菜、特産品などを使った豊富なメニューが味わえ、
      物販ゾーンでは季節の野菜だけでなく、花、加工品や木工品などを販売しています。",
      image: File.open("./public/test_images/Okutsu.jpeg")},
    { name: '道の駅　くめなん',
      address: '道の駅くめなん',
      feature: "岡山県内一のゆずの産地ならではのお土産やうまいもんが揃っています",
      image: File.open("./public/test_images/kumenan.jpeg")},
    { name: '伊里漁協　真魚市',
      address: '伊里漁業協同組合',
      feature: "地元でとれた新鮮な魚介類を販売しています。
                毎週日曜日には朝早くから魚介類だけでなく、農産物・パン・タマゴ・果物・タコ焼きなどの販売も行われ多くの人でにぎわっています。
                冬季には、地元のかき生産者がカキ（殻付きカキ）の販売も行います。",
      image: File.open("./public/test_images/manaiti.jpeg")},
    { name: '笠岡ベイファーム',
      address: '道の駅 笠岡ベイファーム',
      feature: "夏はひまわり、秋はコスモス、春は菜の花など四季折々の花畑が出現します。
                店内では地元産の野菜・フルーツをはじめ、精肉（笠岡牛）や瀬戸内海で獲れた新鮮な魚介類やお菓子や素麺、ソフトクリームを販売。
                レストランでは、笠岡の海の幸、山の幸を中心とした「バイキング」などのグルメが楽しめます。",
      image: File.open("./public/test_images/bayfarm.jpeg")},
    { name: '津山市地産地消センター　サンヒルズ',
      address: '岡山県津山市大田',
      feature: "みずみずしくて柔らかい「つやま生姜」の手作りドレッシングなど、冷蔵加工品の種類が豊富な直売所です！
                寒暖の差が大きい津山で育った甘くて粒の大きいブドウなど、山間部ならではの農産物もお得にゲット出来ると人気です。
                グリーンヒルズ津山内にあるので、公園やプールでたっぷり遊んでお買い物まで出来ちゃいます。",
      image: File.open("./public/test_images/sunhills.jpeg")},
    { name: '道の駅　あわくらんど',
      address: '岡山県英田郡西粟倉村影石',
      feature: "山菜、キノコ、地産のうなぎと森の恵みいっぱい！
                ドライブインのようなレトロさも魅力です。すぐそばには清流吉野川が流れていて引き込まれるような透明度。
                リニューアルされたばかりの遊歩道「木回廊」では木の香りに癒されますよ！",
      image: File.open("./public/test_images/awakuland.jpeg")},
    { name: 'おかやまファーマーズ・マーケット　ノースビレッジ',
      address: ' 岡山県勝田郡勝央町岡',
      feature: "地元や園内で収穫された新鮮野菜、フルーツでも有名な勝央町産もぎたて果物が早い者勝ちでお得にゲットできます！
                ノースビレッジ内はなんと入園無料。レストランなどで季節のスイーツを味わったり、大自然のなかで時間を忘れて遊んだり！ファミリーで１日中過ごせるうれしい農業公園です。",
      image: File.open("./public/test_images/farmers.jpeg")},
    { name: '道の駅　一本松展望園',
      address: '道の駅　一本松展望園',
      feature: "ブルーライン沿いなのでアクセス抜群！
                県内外からも多くの観光客が訪れます。袋いっぱいの柑橘類・黒皮スイカ・アスパラガスなどの農産物、冬には殻付き牡蠣も人気です。
                子どもに人気の鉄道公園、かきフライなど地元グルメが味わえるレストラン、さらには瀬戸内海の眺め！とわざわざ行く価値ありの道の駅です。",
      image: File.open("./public/test_images/tenbouen.jpeg")},
    { name: '道の駅かよう',
      address: '道の駅かよう',
      feature: "のどかな水車の周りには、色鮮やかなコイたちが泳いでいたり。情報コーナーには、森の宝石「ブッポウソウ」のはく製が飾られていたり！里山の景色の中で、ゆったりとお買い物ができる直売所です。
      ブルーベリーを使用したとんかつソースや、ドライブルーベリー入りのカレーなど、吉備高原ならではの加工品も沢山ならんでいます。",
      image: File.open("./public/test_images/kayou.jpeg")},
    { name: '道の駅かもがわ円城',
      address: '道の駅かもがわ円城',
      feature: "エントランスを埋め尽くす円城白菜！
      大きくて、玉太りが良いとして人気です。皆さん戦利品をうれしそうに抱えていましたよ。
      店内には天然イノシシの加工食品のみならず、なかなか他所では見かけないような革製品までも揃っていました。",
      image: File.open("./public/test_images/kamogawa.jpeg")},
    { name: 'はなやか瀬戸内店',
      address: '岡山県瀬戸内市邑久町豊原',
      feature: "「フルーツほうずき」初めて見ました！ビタミン豊富で、スーパーフードとしても注目されているんですって。甘酸っぱい美味しさでした。
      店内には鮮魚コーナーもあり、ゲタやイシモチなど瀬戸内らしいお魚もいっぱい。
      練り物、山菜などなど。JR邑久駅にも近く、人出が絶えない人気店です。",
      image: File.open("./public/test_images/hanayaka.jpeg")},
    { name: 'はなやか牛窓店',
      address: '岡山県瀬戸内市牛窓町牛窓',
      feature: "牛窓といえば！のキャベツの旗が目印。肉厚の朝採れを求めて多くの人が訪れます。
      キャベツに白菜、カボチャなど。どっしりとした重量野菜の産地として、歴史が深い牛窓。「赤い彗星」といったスイカの種類も豊富なので、夏も沢山の人で賑わいます。
      海沿いドライブも楽しめる、抜群のロケーションですよ。",
      image: File.open("./public/test_images/usimado.jpeg")},
    { name: '稚媛の里',
      address: '岡山県赤磐市馬屋',
      feature: "真後ろに前方後円墳！？二重の周壕をもち、備前地域最大ともされる【両宮山古墳】の見学と、さらにはお買い物まで楽しめる！レアでお得な直売所です。
      赤磐市産サチユタカ100％使用の「兄弟豆豊」。赤磐市産朝日米の米粉使用の「かりんとこめ子」など。地元食材のたのしい加工品がずらり。
      古墳情報も観光案内所でゲットできます。",
      image: File.open("./public/test_images/akaiwa.jpeg")},
    { name: '五味の市',
      address: '五味の市',
      feature: "漁協直売！リーズナブルで鮮度抜群の海の恵みをもとめて、県内外から多くの人が訪れます。1度は味わいたい！？
      「カキフライソフト」や、日生ならではの「みかんソフト」など。海鮮のみならず、実はスイーツも楽しめちゃうんですよ。",
      image: File.open("./public/test_images/hinase.jpeg")}
  ]
)

User.find(3).farms.create!(
  { name: '佐山農産物直売所',
    address: '岡山県岡山市北区佐山',
    feature: "ももやマスカットなどの美味しい果物が売っています。
      高級なフルーツですが、傷や不揃いなどのB級品もあるので家庭用であれば安く購入することもできます。",
    image: File.open("./public/test_images/sayama.jpeg")}
)

15.times do |n|
  TagRelation.create!(
    farm_id: n + 1,
    vege_tag_id: 1
  )
  TagRelation.create!(
    farm_id: n + 1,
    vege_tag_id: 10
  )
  TagRelation.create!(
    farm_id: n + 1,
    vege_tag_id: 11
  )
end
