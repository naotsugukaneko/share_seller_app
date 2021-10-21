# アプリ名：Seller info
小売店舗の売り方共有サイトです。他店の新規商品・自慢のPOP・季節トレンド商品の展開を効率よく参考にすることができることを目的に開発しました。
<img width="1149" alt="スクリーンショット 2021-10-19 11 44 34" src="https://user-images.githubusercontent.com/77927517/137835113-58056e40-490e-4a8c-993c-19b42580ebc9.png">

# アプリURL
https://seller-info.herokuapp.com
 - ゲストログインにて閲覧頂けます。

# 💭制作背景
- 現在、コンビニエンスストア展開のフランチャイズ本部のスーパーバイザーとして勤務している中で経営者は案外、孤独であるということを学んだ。
- 開店前は積極的に様々な小売店を見学していた方であっても開店後は家と店舗の往復で余程、意識している経営者を除けば他店舗を見学する機会は皆無である。
- 一方で小売業において毎週入れ替わる新商品の積極的な販売や季節商品の一早い売場提案は必要不可欠であり、未実施の項目が増える毎に売上を最大化することは難しくなっている。
- 無い時間の中で効率的に情報収集を実施することが永年の課題であり、それをITで改善したいと考え、アプリ開発に至る。

# 💻機能一覧
| | 実装内容 | 補足説明 |
| -- | --- | --- |
| 1 | ユーザー登録<br>ログイン機能<br>アカウント情報設定機能 | device |
| 2 | ゲストログイン機能 | アカウント編集不可 |
| 3 | 記事投稿 | CRUD |
| 4 | 画像投稿 | carrierwave |
| 5 | コメント機能 | ajax |
| 6 | いいね機能 | ajax |
| 7 | ページネーション | kaminari |
| 8 | マイページ | 投稿した記事<br>いいねした記事 |
| 9 | 管理者画面 | activeadmin |


- 📖トップページ

![トップページ(Seller info)](https://user-images.githubusercontent.com/77927517/137942080-641f90cb-9459-4b30-aeb5-1f30c5ff6af9.gif)


- 🖋投稿画面

![投稿画面(Seller info)](https://user-images.githubusercontent.com/77927517/137937159-2aff10fc-082c-4180-8b31-1452ee9e8052.gif)


- 🗒投稿詳細と📝コメント機能👍いいね機能

![詳細・コメント・いいね(Seller info)](https://user-images.githubusercontent.com/77927517/137944187-1a703ecf-c42f-4543-8dc0-6917c4b56a70.gif)

- 👤マイページ

![マイページ(Seller info)](https://user-images.githubusercontent.com/77927517/137945129-fbadfae5-6fbf-42b9-905b-d2035b2249a9.gif)

# 💡工夫したところ
- 投稿
   - 一眼でわかるよう画像を強調
   - シンプルな設計
   - コメントを非同期で実装
- マイページ
   - 投稿した記事といいねした記事をタブで表示

# 🔦使用技術
- フロントサイド
    - HTML (erb)
    - CSS (sass)
    - JavaScript (JQuery,erb)
    - Bootstrap
- バックエンド
   - Ruby (2.7.3)
   - Ruby on Rails (6.1.3.2)
- DB
   - PostgreSQL (13.2)
- インフラ
   - Heroku

# 📈ER図
<img width="604" alt="スクリーンショット 2021-10-19 11 49 24" src="https://user-images.githubusercontent.com/77927517/137835554-26be68d3-dce9-4226-b4ec-f1b1318c7d3e.png">

# 🔨今後追加したい機能
- 検索機能
- 投稿店舗の都道府県選択
