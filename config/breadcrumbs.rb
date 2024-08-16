crumb :root do
  link '<i class="bi bi-house-door-fill"></i> Home'.html_safe, search_foods_path
end

crumb :food_index do
  link '検索結果一覧',foods_path
  parent :root
end

# 食品詳細
crumb :food_show do |food|
  link "#{food.name}の詳細", food_path(food)
  parent :food_index
end

# ユーザーページ
crumb :user_show do |user|
  link "#{user.name}のページ", user_path(user)
  parent :root
end
