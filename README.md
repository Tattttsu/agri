# AgriConnect
 野菜売り場や直売所の投稿サイトです。<br >
 野菜の直売所を探したい時に探せ、お客さんに来てほしい農家の方に限らず見つけた直売所を投稿することができます。 <br >
 レスポンシブ対応しているのでスマホからもご確認いただけます。
 

 <img src="https://user-images.githubusercontent.com/100943868/222951831-a7308229-8922-45dd-901b-c36e75616cb1.png">
 <img src= "https://user-images.githubusercontent.com/100943868/222951811-43e42981-093a-40ac-ad60-f122a0cf16ae.png">
 <img src= "https://user-images.githubusercontent.com/100943868/222951804-d7f958a2-5790-4226-8c2e-9171e24a1e5d.png">

# 作成の経緯
　実家が農家をやっており、市場に野菜を持っていくだけでなく、直売もしています。
  しかし、畑だけでは収入を確保することが難しく、破棄する野菜も多いのが現状です。
  また、直売といっても自分の敷地内でしかできないため、不特定多数に見つけてもらうことが難しく、
  知っている近所の人がリピーターとなってきているのが現状です。
  そこで、新たな客層にも見つけてもらえるようこのアプリを作成しました。
  

# URL
http://agriconnect.xyz/ <br >
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
<img width="995" src="https://user-images.githubusercontent.com/100943868/222156545-06eda726-21fb-4b01-9ed7-8ebcd29b0860.png">

## CircleCi
- Githubへのpush時に、RspecとRubocopが自動で実行されます。

# 機能一覧
- ユーザー登録、ログイン機能(devise)
- 投稿機能
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
