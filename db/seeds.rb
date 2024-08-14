ApplicationRecord.transaction do
  Food.delete_all
  FoodCategory.delete_all
  FoodCountry.delete_all
  User.delete_all
  Review.delete_all

  # FoodCategoryモデル追加（8/11追加）
  FoodCategory.find_or_create_by(id: 1) { |category| category.update(name: 'ラーメン') }
  FoodCategory.find_or_create_by(id: 2) { |category| category.update(name: '焼きそば') }
  FoodCategory.find_or_create_by(id: 3) { |category| category.update(name: 'カレー') }
  FoodCategory.find_or_create_by(id: 4) { |category| category.update(name: 'パスタ') }
  FoodCategory.find_or_create_by(id: 5) { |category| category.update(name: '調味料') }
  FoodCategory.find_or_create_by(id: 6) { |category| category.update(name: 'その他') }

  # FoodCountryモデル追加（8/11追加）
  FoodCountry.find_or_create_by(id: 1) { |category| category.update(name: '韓国') }
  FoodCountry.find_or_create_by(id: 2) { |category| category.update(name: '中国') }
  FoodCountry.find_or_create_by(id: 3) { |category| category.update(name: 'イタリア') }
  FoodCountry.find_or_create_by(id: 4) { |category| category.update(name: 'インド') }

  # Foodモデル登録（8/11追加）
  # Food.create(id: 1, name: '辛ラーメン 袋麺', spice_level: '2.5', price: '212', title: '本場韓国の辛さで人気の高い“うまからっ！”でおなじみ「辛ラーメン」。', body: '厳選した唐辛子の「辛さ」、ブレンドしたオリジナルスパイスと素材の旨み成分がたっぷり溶け込んだ「旨味スープ」、「旨さ」と「辛さ」がマッチした絶妙なおいしさがクセになる「うまからっ！」味です。特殊な方法で作られた楕円形の麺によるなめらかな口当たり、特別に配合した高級麺用の小麦粉を使用したコシのある麺を特徴とした製品です。', food_category_id: 1, food_country_id: 1, food_image: File.open(Rails.root.join('db/seeds/ramen_image.png')))
  Food.create(id: 1, name: '辛ラーメン 袋麺', spice_level: '2.5', price: '212', title: '本場韓国の辛さで人気の高い“うまからっ！”でおなじみ「辛ラーメン」。', body: '厳選した唐辛子の「辛さ」、ブレンドしたオリジナルスパイスと素材の旨み成分がたっぷり溶け込んだ「旨味スープ」、「旨さ」と「辛さ」がマッチした絶妙なおいしさがクセになる「うまからっ！」味です。特殊な方法で作られた楕円形の麺によるなめらかな口当たり、特別に配合した高級麺用の小麦粉を使用したコシのある麺を特徴とした製品です。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 2, name: '辛ラーメン キムチ 袋麺', spice_level: '1', price: '212', title: 'しゃきしゃきの白菜キムチのコクと旨みがたっぷり入った、マイルドな辛さの「辛ラーメン」。', body: 'スープと相性がよく、滑らかな口当たりとしなやかなコシをあわせ持った麺、キムチは農心独自の冷凍乾燥(フリーズドライ)製法により、しゃきしゃきした白菜キムチそのものの歯ごたえと味わい。「辛ラーメン」の旨みはそのままに日本人向けに辛みと酸味を抑えた、キムチのさっぱりとした味わいが楽しめます。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 3, name: '辛ラーメン ブラック 袋麺', spice_level: '2', price: '262', title: '“特製辛味スープ”と“特製豚骨スープ”のW(ダブル)スープで、コクのあるマイルドな「辛ラーメン」。', body: '濃厚でコクのある“特製豚骨スープ”と厳選した唐辛子にオリジナルスパイスを加えた、“特製辛味スープ”のWスープが味わい深いプレミアムな「辛ラーメン」です。大きめの具材(チンゲンサイ、しいたけ、味付かまぼこ、唐辛子)がスープにさらなる旨味を加えます。もちもち食感の中太麺に濃厚で程よく辛いスープがよく合います。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 4, name: '辛ラーメン LIGHT 袋麺', spice_level: '2.5', price: 'null', title: 'ノンフライ麺でカロリー30％OFF※と低カロリーな健康志向の｢辛ラーメン」。', body: '生麺のようなツルツルとした食感、もちっとしたコシのあるノンフライ麺とあっさりとしながらも野菜のコクと旨みが味わい深い、スッキリとした「うまからっ！」味のスープがよく合います。｢辛ラーメン」に比べ、カロリー30％OFF※のヘルシーな製品です。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 5, name: '辛ラーメン焼きそば 袋麺', spice_level: '4', price: '262', title: '辛ラーメン誕生から30年以上の歳月を経て、ついに焼きそばタイプが初登場。', body: '辛ラーメンのクセになる旨辛な味はそのままに、焼きそばタイプに再現。麺は焼きそばに合う、細いながらも、もちもちとした麺を使用。具材の一つ、かまぼこにはロゴである「辛」の文字が入っています。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 6, name: '辛ラーメン焼きそば チーズ 袋麺', spice_level: '2', price: '262', title: '辛ラーメン焼きそば待望の第2弾。うまからっ！×チーズのクセになる味わい。', body: '人気の「辛ラーメン焼きそば」シリーズから待望の第2弾、チーズタイプが新登場。辛ラーメンの”うまからっ！”な味わいに濃厚なチーズが加わることでさらにやみつきな味わいに進化。チーズのマイルドさによって、通常の辛ラーメン焼きそばよりも辛さ抑えめのため、より幅広い方達にお楽しみいただきやすい味になっています。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 7, name: 'ノグリラーメン 袋麺', spice_level: '2', price: '212', title: '麺はコシのある太い麺、もちもちとした食感とうどんのような食べ応え。', body: 'スープは唐辛子と貝、いか、えび、かつおなどさまざまな海鮮でだしをとった海鮮スープで、辛いながらもさっぱりした味が特徴です。具材は大きい昆布とわかめ、いか、にんじんを入れ、海鮮の旨味をアップしています。ブランドネームの「ノグリ」は麺が丸くてぽっちゃりした感じが狸(韓国語ではノグリ)をイメージするということでネーミングされたものです。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 8, name: 'ノグリラーメン マイルド 袋麺', spice_level: '0.5', price: '212', title: '辛さ抑えめ。マイルドタイプのノグリラーメン。', body: '唐辛子と貝、いか、えび、マグロなど、さまざまな海鮮でだしをとった海鮮スープで、さっぱりした味が特徴です。通常の「ノグリラーメン（通称：ノグリHOT）」に比べて、辛さは抑えめ。具材は大きい昆布とわかめ、かまぼこ、にんじんを入れ、海鮮の旨味をアップ。麺はコシのある太い麺、もちもちとした食感とうどんのような食べ応え。ブランドネームの「ノグリ」は麺が丸くてぽっちゃりした感じが狸（韓国語ではノグリ）をイメージするということでネーミングされたものです。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 9, name: 'ノグリ 旨辛焼きちゃんぽん 袋麺', spice_level: '3.5', price: 'null', title: 'もちもちした太麺に海鮮のコクと唐辛子がきいた、旨辛な汁なし麺。', body: 'コシのあるもちもちとした太麺はうどんのような食べ応え。 大きい昆布やわかめ、いか、にんじんなど、具もたっぷり入ってボリューム満点。 貝、いか、えび、かつおなどさまざまな海鮮の旨みとコクにピリッと唐辛子がきいた旨辛味が後を引く美味しさです。', food_category_id: 1, food_country_id: 1)
  Food.create(id: 10, name: 'チャーワン 袋麺', spice_level: '0.5', price: 'null', title: 'お店で食べるような風味を再現、韓国風プレミアムジャージャン麺。', body: '甘味のあるソースはマイルドでありながら濃厚。昆布粉末を練り込んだ、独自製法のもちもち太麺はインスタントとは思えない食感です。 玉ねぎ、キャベツ、じゃがいも、エンドウ豆などの食べ応えのある大きな具材はソースとの相性も抜群です。', food_category_id: 1, food_country_id: 1)

  # Userモデル登録（8/12追加）
  User.create(id: 1, name: '重岡大毅', email: 'shigeoka_daiki@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 2, name: '桐山照史', email: 'kiriyama_akito@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 3, name: '中間淳太', email: 'nakama_junta@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 4, name: '神山智洋', email: 'kamiyama_tomohiro@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 5, name: '藤井流星', email: 'fuji_ryusei@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 6, name: '濵田崇裕', email: 'hamada_takahiro@west.com', password: 'password', password_confirmation: 'password')
  User.create(id: 7, name: '小瀧望', email: 'kotaki_nozomu@west.com', password: 'password', password_confirmation: 'password')

  # Reviewモデル（8/13追加）
  Review.create(id: 1, title: 'めっちゃ美味しい1', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '1')
  Review.create(id: 2, title: 'めっちゃ美味しい2', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '2')
  Review.create(id: 3, title: 'めっちゃ美味しい3', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '3')
  Review.create(id: 4, title: 'めっちゃ美味しい4', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '4')
  Review.create(id: 5, title: 'めっちゃ美味しい5', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '5')
  Review.create(id: 6, title: 'めっちゃ美味しい6', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '6')
  Review.create(id: 7, title: 'めっちゃ美味しい7', rating: 'めっちゃ美味しかったです。', spice_level: 4, food_id: '1', user_id: '7')
end
