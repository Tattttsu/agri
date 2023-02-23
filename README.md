# AgriConnect
 野菜売り場や直売所の投稿サイトです。<br >
 野菜の直売所を探したい時に探せ、お客さんに来てほしい農家の方に限らず見つけた直売所を投稿することができます。 <br >
 レスポンシブ対応しているのでスマホからもご確認いただけます。
 <img width="1400" alt="スクリーンショット 2020-05-07 0 06 18" src="https://user-images.githubusercontent.com/60876388/81193748-c51d9b00-8ff6-11ea-9981-46789f016300.png">
 <img width="350" height="700" src= "https://user-images.githubusercontent.com/60876388/81476543-643bd000-924d-11ea-9d26-cac305ca9f91.jpeg">

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
<img width="995" alt="スクリーンショット 2020-05-07 11 14 01" src="https://user-images.githubusercontent.com/60876388/81247155-3ccde300-9054-11ea-91eb-d06eb38a63b3.png">

## CircleCi
- Githubへのpush時に、RspecとRubocopが自動で実行されます。

# 機能一覧
- ユーザー登録、ログイン機能(devise)
- 投稿機能
  - 画像投稿
- いいね機能(Ajax)
- コメント機能(Ajax)
- フォロー機能(Ajax)
- ページネーション機能(kaminari)
  - 無限スクロール(Ajax)
- 検索機能

# テスト
- RSpec
  - 単体テスト(model)
  - 機能テスト(request)
  - 統合テスト(feature)
