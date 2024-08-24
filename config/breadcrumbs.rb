crumb :root do
  link '<i class="bi bi-house-door-fill"></i> Home'.html_safe, search_foods_path
end

crumb :about do
  link 'ゲキカラ、ドウ？とは',about_path
  parent :root
end

crumb :food_index do
  link '検索結果一覧', foods_path(search: session[:food_search], sort: @current_sort)
  parent :root
end

# 食品詳細
crumb :food_show do |food|
  link "#{food.name}の詳細", food_path(food)
  parent :food_index
end

# レビュー投稿ページ
crumb :review_new do |food|
  link "食品レビューを書く", new_food_review_path(food)
  parent :food_show, food
end

# レビュー編集ページ
crumb :review_edit do |food|
  link "食品レビューを編集する", edit_food_review_path(food)
  parent :food_show, food
end

# ユーザーページ
crumb :user_show do |user|
  link "#{user.name}のページ", user_path(user)
  parent :root
end
