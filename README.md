<h2 align="center">BACKPACKER200209</h2>
<p align="center">
  <img src="logo8.jpg" width=40%>
</p>
<br />
<p align="center">
  <img src="readme1.jpg" width=40%>
</p>
<br />
<br />

## 📷  App URL

### **https://backpacker21.herokuapp.com/**  
<br />

### <p align="center">構築方法</p>

$ git clone https://github.com/aocattleya/hoge.git  

$ cd hoge  

$ bundle install  

$ rails db:create  

$ rails db:migrate  

$ rails s

👉 http://localhost:3000

## 🌏  制作背景
2020年の2月から1ヶ月間で、自分にとっては初めての海外でしたがバックパッカーという形で、ベトナム、ラオス、タイ、マレーシアの4カ国に行きました。  
リュック1つで、行きと帰りの飛行機しか取らず、宿も現地で見つけるなど、初めての海外としては挑戦的だということもあり、行く前には周りの人から批判や心配されました。  
実際に行ってみて辛いこともありましたが、非常に楽しく自信にも繋がりました。  
行っている最中にSNSで発信したり、帰ってきた後にエピソードを話したところ、行ってみたいという人が多かったです。  
ですが、情報量が少なく何もわからないから不安の方が強いという点で、断念してしまっている人が多かったです。たしかに、情報量が少なくて困る場面は何度もありました。  
そこで、情報さえ得ることができれば行ける人も増え、自分は本当に楽しかったですし、人として成長できたので、他の方にもこの経験をして貰いたい思いから、今回のアプリを作りました。  

ペルソナとしては、
性別は問わず  
年齢は主に学生  
世界中の方  
を対象としています。  
理由としては、お金を持っている大人はバックパッカーという形ではなく旅行という形で行くことができますが、学生でそこまでお金に余裕がある人は少ないことに加えて、自由に旅行に行けるのは学生であり、若いうちにこの経験をして貰いたいからです。  
自分もそうでしたが、学校のある期間にお金を貯め、情報を集め、長期休みに海外に行くことを想定しております。
性別に関しては、自分が実際に行き、何人ものバックパッカーの方にお会いしましたが、男性の方が多かったです。安全性の問題もあると思いますが、正しい情報を得て対策をした上であれば問題ないと思いますので、是非女性の方にも行って貰いたい思いから性別は問いませんでした。  
<br />
<br />

## 🌎  概要
このアプリでは、自分が行きたい国に関する情報を得ること、行きたい国を探すことができます。  
載っている情報は、実際に行った方々が載せている情報であり、旅行サイトや本などには載っていないマニアックな情報やタイムリーな情報を得ることができます。  
例としては、おすすめ度、安全性、英語は通じるのか、おすすめの換金所、宿の値段や評価、交通手段、安く済ます方法などです。  
検索機能もあり国名を入れると該当する記事が出てきます。  
ユーザーは投稿することもでき、母国の事を載せるだけでも、他国の人からしたら貴重な情報ですので、投稿のハードルも高くなく気軽に投稿でき、自分の経験を共有することができます。  
投稿者にコメントで質問することができ、投稿者も質問に関して返信機能から応えることができ、より踏み込んだ情報を得ることができます。  
<br />
<br />

## 🌍  工夫したポイント
気軽に情報を得る事に重きを置いているので、新規登録もユーザー名、メールアドレス、パスワードの3つにし、投稿も必須の部分は、選択制にし、文だけでは伝わらない為、複数の写真を投稿できるようにしました。  
また、実装に最も時間がかかったコメントに対する返信機能では、このアプリの目的である情報を得るということにおいて、投稿者と閲覧者が話すことができる場合とできない場合では便利さが大きく変わっていくると思い、時間をかけてまで実装しました。  
世界中の方を対象としているので、行った国、都市や街は英語にし、検索も英語にしました。慣れないと不便を感じるかもしれませんが、情報量も大事にしたかった為このようにしました。自由記事では言語は問わず、Google Chromeなどの翻訳機能を使うことで読むことが可能になるので、投稿のハードルを下げて情報を共有し易くする意味でも、このようにしました。  
<br>
<br />

## 🌏  課題や今後実装したい機能
3点あります。
1点目は、現段階では、投稿者がコメントで質問されたこと、質問者が返信を受けたことが投稿をいちいち見ないとわからない為、通知機能をつけたいと思っています。  
2点目は、一個のコメントに対して複数人会話に参加した際に、どのユーザーへの返信なのかがわかりずらいので、表示方法を変えて紐付いているコメント同士をわかりやすくいしたいと思っています。  
3点目は、コメントでの質問に対して、必要に応じて写真も送ることができるように、コメントで写真を送信できる機能もつけたいと思っています。  
写真の選択するボタンが日本語になっている。



<br />
<br />





## テーブル設計
<br />

### users テーブル

| Column             | Type     | Options                   |
| ------------------ | ------   | -----------               |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |

<br />

### Association

- has_many :articles
- has_many :comments

<br />

### articles テーブル

| Column       | Type        | Options                        |
| ------       | ------      | -----------                    |
| country      | integer     | null: false                    |
| season       | string      | null: false                    |
| city         | string      | null: false                    |
| english_id      | string      | null: false                    |
| nice_id         | integer     | null: false                    |
| safe_id  | string      | null: false                    |
| content      | text        | null: false                    |
| user         | references  | null: false, foreign_key: true |

<br />

### Association

- belongs_to :user
- has_many   :comments

<br />

### comments テーブル

| Column       | Type       |Options                           |
| ------       | ---------- | ------------------------------   |
| comment      | text     | null: false                      |
| user         | references | null: false, foreign_key: true   |
| article         | references | null: false, foreign_key: true   |

<br />

### Association

- belongs_to :user
- belongs_to :article

<br />

### replies テーブル

| Column       | Type       |Options                           |
| ------       | ---------- | ------------------------------   |
| reply        | text       | null: false                      |
| user         | references | null: false, foreign_key: true   |
| comment         | references | null: false, foreign_key: true   |

<br />

### Association

- belongs_to :user
- belongs_to :comment

