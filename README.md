## ■サービス概要
全世界の激辛食品に特化した、激辛チャレンジ発見サービスです。\
国や食品カテゴリ、辛さの要因、値段等に基づいた条件検索機能を提供し、ユーザーに最適な激辛食品を提案します。\
（例：韓国、ラーメン、唐辛子 → レベル1:辛ラーメン、レベル2：プルダックポックンミョン、レベル3:・・・）\
激辛愛好家が新しい挑戦を見つけやすくすることで、激辛体験をより豊かにすることを目指します。


## ◾️このサービスへの思い・作りたい理由
私自身、激辛ファンとしてこれまでもスーパーやコンビニで激辛食品を探索してきましたが、情報自体が少なく、どこでどんな激辛食品を見つければいいのか悩むことが多かったです。\
また、友人と激辛食品をシェアする際に、辛さの感じ方に違いがあって戸惑うこともありました。\
本サービスを通じて、正確でわかりやすい激辛情報を提供し、激辛愛好家が新しい挑戦を見つけやすくするお手伝いをしたいと考えています。


## ◾️ユーザー層について
- 激辛愛好家: 辛いものが大好きで、新しい激辛食品やチャレンジを常に探している人たち
- 挑戦好きな人: 辛いものに興味があり、新しい辛さに挑戦してみたいと考えている人たち
- 話題を探している人: 最新トレンドや話題を求めている人たち


## ◾️サービスの利用イメージ
国や食品カテゴリ、辛さの要因に基づいた条件検索機能を提供し、ユーザーに最適な激辛食品を見つける手助けをします。\
例えば、ユーザーは「国：韓国」「食品カテゴリ：ラーメン」「値段：無料〜500円」といった条件を指定して検索することで、関連する激辛食品がレベル順に提案されます。\
検索結果には、各食品の辛さレベルや特徴が詳細に表示され、どの食品が自分の好みに合うかを簡単に判断することができます。


## ◾️データ登録と拡充方法
- 管理者による手動登録
  - 初期段階では、[AppBankのサイト](https://www.appbank.net/2023/08/17/casual-food/2281672.php)から激辛食品データを取り込み、管理者が手動で登録します。
  - また、データの入れ込みにはAPIを利用して外部の激辛食品データベースから情報を取得することも検討しています。


## ◾️ユーザーの獲得について
SNSでの情報発信:激辛に関する情報をSNSでシェアし、ユーザーの関心を引くことでアプリへの導線を作ります。


## ◾️サービスの差別化ポイント・推しポイント
- 特化した検索オプション
  - 国、食品カテゴリ、辛さの要因、値段など、ユーザーが細かく条件を指定できる検索機能を提供し、求める激辛食品を見つけやすくします。
- 他のユーザーから見つける新発見
  - ユーザーは他のユーザーのお気に入りリストやレビューを閲覧できるため、自分の嗜好に合った激辛食品を見つけやすくなります。これにより、他の人が試したアイテムや高評価の食品を参考にしながら、新しい激辛食品の発見が容易になります。


## ◾️機能候補
### MVPリリース時に作っていたいもの
- トップページ（マルチ検索機能）
- 検索結果一覧ページ
- 食品詳細ページ（レビュー一覧表示含む）
- レビュー詳細ページ
- ログインページ
- 会員登録ページ
### 本リリースまでに作っていたいもの
- マイページ
- ログイン情報変更ページ
- お気に入り機能
- SNS（X）へのシェア機能


## ■機能の実装方針予定
### 1. 初期データ登録
- [AppBankのサイト](https://www.appbank.net/2023/08/17/casual-food/2281672.php)から激辛商品データを取り込み手動で登録する。
- 辛さのレベルは上記サイトに基づいて初期データは以下の基準で登録する。
  - 辛さの基準(10段階)
  - 0：辛くない
  - 1：カレーの甘口
  - 2：カレーの中辛
  - 5：カレーの辛口
  - 8：激辛の入口
  - 10：痛すぎるレベル
  - ※辛さの感じ方には個人差があります。
### 2.  トップページ（マルチ検索機能）
- 国、食品カテゴリ、値段等の条件で激辛食品を検索できる機能を表示する。
### 3. 検索結果一覧閲覧ページ
- マルチ検索機能にて絞り込んだ食品を表示する。
### 3. 食品詳細閲覧ページ
- 食品の辛さレベル、特徴、説明等の情報を表示する。
### 4. レビュー一覧閲覧ページ
- ユーザーが投稿したレビューを食品と連携して表示する。
### 5. レビュー詳細閲覧ページ
- ユーザーが投稿したレビューの詳細を表示する。
### 6. レビュー投稿ページ
- ユーザーが激辛食品に対してレビューや評価を行える機能を実装する。
- レビューの基準は以下のように設定する。
  - 辛さの基準（10段階）
  - コメント
  - 画像
### 7. レビュー編集ページ
- 投稿したレビューを編集できる機能を実装する。
### 8. レビュー削除ページ
- 投稿したレビューを削除できる機能を実装する。
### 9. ユーザーページ閲覧ページ
- 他のユーザーのお気に入り（食品・レビュー）を表示する。
### 10. マイページ編集ページ
- 自身の情報を編集できる機能を実装する
### 11. ログインページ
- ユーザー認証のためのログイン機能を実装する。
- 認証にはsorceryの利用を検討する。
### 12. 会員登録ページ
- 新規会員登録ができる機能を実装する。
### 13. 会員情報削除ページ
- 登録した会員情報を削除できる機能を実装する。
### 14. ログイン情報変更ページ
- メールアドレス、パスワードを変更できる機能を実装する。
- メールアドレス変更にはメールでの認証を検討する。
### 15. お気に入り機能
- 食品、レビュー内容に対してお気に入り登録できる機能を実装する。
### 16. お気に入り解除機能
- 登録したお気に入りを解除できる機能を実装する。
### 17. SNSシェア機能
- 投稿したレビューをSNSでシェアできる機能を実装する。


## ◾️将来的な追加機能案
- ランキング機能：お気に入りの数が多い順や、レビュー評価の高い順でのランキング機能を実装
- フォロー機能：ユーザーが他のユーザーをフォローすることで、新しい投稿やレビューをいち早くチェックできる機能を実装
- タイムライン機能：フォローしたユーザーの活動をタイムラインで確認できる機能を実装
- 通知機能：新しい激辛食品が追加されたにユーザーに通知する機能を実装

## ◾️画面遷移図
[画面遷移図](https://www.figma.com/design/3NjEOnkxcRGnJcninnCsKs/%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=SrAVSLozkgISV335-1)

## ◾️ER図
[ER図](https://app.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=portfolio.drawio#R%3Cmxfile%3E%3Cdiagram%20id%3D%22R2lEEEUBdFMjLlhIrx00%22%20name%3D%22Page-1%22%3E7Z1bc5u6Fsc%2FjR%2FT4WLAfmzceHemydmZdJ%2BeffqSIUaxOcXIBysX99NvYYQvEbLBgJG1NNOZBhkD1vrrJ6G1ltSzR%2FP3PxJ%2FMbvDAYp6lhG89%2BwvPcuyjP6Q%2FpeWrFiJbRlZyTQJg6zM3BZ8D38jVpif9hIGaLl3IsE4IuFiv3CC4xhNyF6ZnyT4bf%2B0Zxzt33XhTxFX8H3iR3zpf8KAzLLSgWNsy7%2BicDrL72wa7JO5n5%2FMCpYzP8Bve0XonYxxTNgj3qNk7scoJvSTOz%2F5hZKeczMjJP2ln3vWmP57Ts%2F%2BNMV4GiF%2FES4%2FTfCcFk%2BW9JTxsz8Po7Sedy50zS5Eb2ff9OxRgjHJ%2Fpq%2Fj1CUGis3Q%2FZMY8Gnm3pI0uuW%2BMLo6nV1%2B8sg8dc3%2Bwe5u5vee09XVnaVVz96YfU7xjhYsgoiq7zWaV0t0j%2BJ%2F5QWXS%2BJnxAmDtugBdTcxA9j%2BsvsL%2Bb6OIr8xTJcn56VzMIouPVX%2BIXkF8qPrp%2FDdxQ8ZNpIz6UyuaUXSw%2FTi6e1%2FJ09TPqxH4XTmP49oT89veN1gpb0WW79JWFn8JXD6usVJQS97xSxyvoD4TkiyYqewj51%2B0wUb1uZWbnMZjsSsz1W6DPdTDfX2pqD%2FsEsUsE6NmcdoWHoTyWhHz3QJufH07WN9k2Q1mOQ4MVffjJFhBUscJjW4M0rykS%2FruwwikY4wqklYxyj%2FLT1j3Ou6T%2F6c0fGJ6fn0AcY0WNze0z%2FpacnZITjJUmoItJbIWqYN5Qa55rgBbtPhJ7zx0hYZaZ%2FP2FCaBsSmfGgio%2FbllHPLmvatizb5yx7%2F62KbTH9rc%2FRml6zMAhQnDXBlLj%2B1t4Fpiys%2F02dfzTGx4ZX0h52aXvsGMCuWP%2FsYttaqXw1P6Laj32CrvFLzKC3a9TNc55uZ4ezMz1dPjvnQM3OvV4u%2FEkYT2%2Bzb7ofhOC0IYR3ccO0GhVGqcudQRkuZLYbLbLd7ZrtXi3LnqnFl6x9t3Ttq07yAWfVZ0yHyo%2BxP0cS2vco0RsXgMoEfxj9%2FP308%2FfPB%2FQ5%2FvHn%2F1fjafivK8swQSKb00JZiguRPTwjsgWmLHgR%2FlbJvGfl9hETHJKr0uQW%2FHD%2BPZqyO5jQu05xsnq8zCF5C0pQGeGFWBrqQXg7g3DT6noUns9XKzEMH5auf4VgXmxWkzPrhN4sV4xc1m1qEF7e%2FCoTvLAvMzXCWxqUm073o%2FLLQfgp47BMu0ozvNiuPMOXi3CCHiP0mrqrpTNxi2NxkQbAgTz3tmpu1%2BX2oGtu99WaOMmUCQ%2FTfX5ObJFQTEto3BYBLbI%2BPEDbGtCNAHoTStcdoPsStuEaTdQGCmg%2BuiSd134M52kMpXwWbpPSAgmAo7TtaUo3Q%2BnS4Z9tUdoeSNiGT2%2BimTLhUdrmZyhJSCJggBZZHx6gK429NKDFgPY6B7QjYRuu0UT7QAHNh%2BI%2B4eCC%2FYlNGh8en3VQXzN8to3O%2BWxJ2IZrNFH1Qz6KfzcfvjdJEL1l8OgTCS3cJqV12AdzIVd6N9aUFlP6nKmQxaYcStiGT2%2BimTIBUpoP1nlZBCApLZKAypQuDtbke%2B4H9BqiN73AQG9ngQGG4n7pAbPZAIuLDcbnpQPqZytkuJvlM5tlWXLA5L2FKq05sJGujpE3%2BQmty0xxOnHVgQpSgNcl18tOv3DCG20SvvOFB0w%2BR13mJNbjJvBKm0B5pPNO5JclSi46dbVJ%2B4PjeM3cGM1xMcfPuRpBsW35%2FJjxN3l9GcdnII3SJlCd43kr5UI2VeZ4BfurzPHiwFUXJLZPcWSYghjfLpYcKLZlpdhb6T0ZmTSVZnTx7%2BZfowAGbIqsD4%2FQlfyTmtAHCN35igL5zaRqxDXaKNAFBBz%2BBQlexKbI%2BOAA7cCc%2BWgD0J0vHeBUSjKWHtCZNAECmo8jSNaBHxBzU0UigAfqSvkyGtQHcp86X0LAqTRvJT%2BoHaCg5sMBwC7FJdIAOE67OgWqKU53voiAW%2BnlSHpOu%2Br7DYt%2Ft86BOiYBeJjWKwk0henOlxJw1VpKwAW6lIDLR15DTYISSUBlTBdHv%2FBd97%2BXKNEpUL2dTCZ5UqAsnQJVrk%2B1Li8FylI7BcrSKVCbqgCeAlVBCvA6ZJ0C1RbhO0%2BBsvjYPQlbfdn61%2FlPm6oozn9SfPPVCgJQmeLFG6eAZPZJCwAdnvzqfvNVCVtwqdoW61JpQBcv%2F8PxGc39EJgHWbOZhaZqNjfD5u5zmtTyS0B1S3BwniSrReqVWPjL5RtOLnJqpHEZgOO03iukKU53ntmk1l4hQLcK4Sc5lvSuElq2RTbrfULYu4Sh4dwQnDvPajIrTVZJT%2BdMmvDwbFocnxcJpoZAENOaRCqAR2q9MWpDpO4%2BrclUa2dUUdyr8qTmA30meD5PK0s%2B87bJaL0tKqsIvcxWU4zuPKXJVGuZLRPoMlsFqxVDTWkSSQAcpi1LY7ohTHee0mRVei2SHtOZNOFhuiAfAmpKk0gC4DDt8hHUY%2F8VJyFBY4wDVVKbjmikWmqTWTbOznTbIrLHL5unu9uSbd8V%2BKU6SG0qti0%2FNy3n3h%2Frxpi1fNOqZRIPaKilx8daXvxeIE3aH1x37Ol4y4Ywfs78pWJT8hPXcm790SDGgQZlenxU5sVvBdKk%2FcFhfKAXmm8I452nNOUPIFUbPr26B0DXmR%2FyL8xQXRQiCYCj9FDPmTRE6e6Tm4ZquSiGQF0UQ%2B2iOCYBcJg2C9Z6yn0UD%2ButCLSXgn7i5tE8jMle2eie9rwUZsFaH7rLLdn%2Bmezl9VOY%2BZUBOSqYouF1zKbNv0CBdFUIFQCvX7Y1zJuCeefeCtPmXZGquyuYgCHCXLypFzScizQAEOd6T6%2BmcN6518K01drUi4kTIqr5AE2ojguhCACyutIiMZrVUvsuTLtSuMAFwHoAFNb5lKt2X4hFAA%2FWfX7qLM2tGNG7TnESIu2%2B6PHui6vSK0i06L%2FoW5zlAPW7pS17SPYS%2By%2F6%2FJTXBe0hc5pNoM549fkZr8uc6ireRaZRMQDsofkIA0CcrznaP8L57l0bfT48X8KWv%2BPXGNY0CNS5sn7BXFk2yF49Xvb%2BMo3qAB7fHb3FTFM479614chI7xoV7gBNfjYd%2Fv0LrGtDJAKArNYp0E2xWgLXhqPWrjNMnRBhzb9EgXVtiEQAENb8G9f3lyft2diVwzAfMlddGrtFx4ZTb3PdC%2B91a06iO5IvIGU6fNqN6o4NB2rIQc4I7dg4LgZ4%2FbOr1wlsjfPdOzZcq5Z1L86x4UKdKXP5mbLlyxNk34ZICgARr%2BfLmiJ6974NV7HpMhfqdJlbtFEzUN%2BGSAQAWa23aW6K1RL4Nly1dmo2RYt8qQ9rfr4MrG9DJAJ4sC5YnD1N23gk%2BPF79vL1rH0cH30cHfo0PN4XpXvbss3eO7wHVfc%2BDY%2F3WCm%2F2JQHtUP2%2BA4Z5ILqQgXA640HetvXpmDeveNiULDrmOqLTQ3Abg7L99y7zgtwTBcJASDTDc30hpjevetiIONgvE4zNaDy2uJ4DdZ1IRIBQFZX2mBBs1pu18WgUtDABcBaUOPqw5pfuQCs60IkAoCw5heUQ8EU5W4BysgZnuLYj262pddJ%2BjwoYIbannOL1xZOPQX%2FQ4Ss2Puw%2F0IwLZqRecQ%2BRe8h%2BXvn7%2F%2Bml%2FrksKMv7%2BzK64NVfhDTn%2Fr37sHOt9LD7dfWR%2Fn31j6Vz0myFuzNQybFdeE4TCuLfSXYnvIbJfgvfOfHq%2ByTnfOyykprSKi4fHCLX5IJO2t09bq6%2FWWQ%2BOub%2FYPc3U3vvacri4GV5F2d6ERTMLOXoMgn4ev%2BkzTfARRsaye7QsxqCtkzfqaPfavzEtrI46OQmhSIUVIgApiV1gf76n06ftpCcGjsJyNtwgfzS2TPxb7VApqGfISb7MKrh6aMO38eB1SRRk8T3sGtpVsXXk0w8fP8Z9SHcX59SN11VdqtvSaarME%2Bmizvw8ipdTTx8VyyS69in1iIJkGfd042bTYKO6o9y%2BqWTpc3sFZFIvluQ0clIgo3Po9ELEP5kXWTVvUKhsPVVjOr1utQvfqrnRPY9KJ4vPxhWWKbLRU5Lnn%2BZluVraayR2i067IMfj5PMdFVHzW1DCTLMEtLt26n1Yh0TaOqdN2zSPfyXgjrzEQcGMuXkniT8M1XATmuYFHMwrn61Mt7KfygEaNvH1UJPbpHSUjrbB0Zfsok1sHhWqP9tsdLp%2FitshP0ufsoO9Zpux8nxepwjx4mGJPd0xN%2FMbvDAUrP%2BAc%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E) 

[![Image from Gyazo](https://i.gyazo.com/f83debc4b995420e9b53d677d85597ca.png)](https://gyazo.com/f83debc4b995420e9b53d677d85597ca)
