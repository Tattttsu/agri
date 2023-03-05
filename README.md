# AgriConnect
 野菜売り場や直売所の投稿サイトです。<br>
 野菜の直売所を探したい時に探せ、お客さんに来てほしい農家の方はこのサイトに投稿することによって、いろんな方に見てもらうことができます。<br>
 
 また、農家の方に限らず投稿できるので、見つけた直売所を投稿することもできます。<br>
 場所の名前を入れることによって、自動的に居場所がGoogle mapで検索され、地図に表示されます。<br>
 レスポンシブ対応しているのでスマホからもご確認いただけます。

 <img src="https://user-images.githubusercontent.com/100943868/222956477-f9cec8b0-f9c2-4204-8d95-f61070aca6b8.png">
 <img src= "https://user-images.githubusercontent.com/100943868/222951811-43e42981-093a-40ac-ad60-f122a0cf16ae.png">
 <img src= "https://user-images.githubusercontent.com/100943868/222951804-d7f958a2-5790-4226-8c2e-9171e24a1e5d.png">

# 作成の経緯
農家の人がより多くの人に野菜を買ってもらえるよう、そして買いたいという人が地元の野菜を買いやすくするため、このアプリを作成しました。<br>
私の実家は農家をやっており、野菜の収入源としては市場に野菜を持っていく、直売をして販売するという２種類の方法をとっています。
しかし、個人農家から買い取る市場は減っていき（実際車で１０分くらいのところにある市場が閉鎖しました）直売にしても近所なおかつ、知っている人しか来れないため売れる量には限りがあります。<br>
そこで、新たな客層にも見つけてもらえるようこのアプリを作成しました。<br>

また顧客目線としては、旅行先の道の駅などで野菜を売っていて買ってしまう経験、スーパーの生産者が見える野菜を買ってしまう経験が多くの人にあると思います。そのような産地がわかり、新鮮な野菜の需要はある中で、近所で知らなかった直売所などがあるかもしれません。それを見つけ出せるようアプリを作りました。
  
  

# URL
http://agriconnect.xyz/ <br>
画面右上のテストログインボタンから、メールアドレスとパスワードを入力せずにログインできます。

# 使用技術
- Ruby 3.1.2
- Ruby on Rails 6.1.7
- MySQL 8.0
- Nginx
- Unicorn
- AWS
  - VPC
  - EC2
  - RDS
  - Route53
- CircleCi
- Capistrano
- RSpec
- Google Maps API

# AWS構成図
<img src="https://user-images.githubusercontent.com/100943868/222156545-06eda726-21fb-4b01-9ed7-8ebcd29b0860.png">

## CircleCi
- Githubへのpush時に、RspecとRubocopが自動で実行されます。

# ER図
<img src="https://user-images.githubusercontent.com/100943868/222953468-b945d653-6234-4b81-892d-29d0477cfbac.png">

# 機能一覧
- ユーザー登録、ログイン機能(devise)
- 投稿機能
  - 画像投稿
  - google map表示
- いいね機能(Ajax)
- コメント機能(Ajax)
- フォロー機能(Ajax)
- 検索機能

# テスト
- RSpec
  - 単体テスト(model)
  - 機能テスト(request)
  - 結合テスト(system)
