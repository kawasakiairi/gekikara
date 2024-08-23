Rails.application.routes.draw do
  get 'favorite_foods/create'
  get 'favorite_foods/destroy'
  # トップページ（8/11追加）
  root "foods#search"

  # Foodページ（8/11追加）
  resources :foods, only: %i[index show] do
    collection do
      get :search
    end
    # お気に入り食品機能（8/23追加）
    member do
      post 'favorite'
      delete 'unfavorite'
    end
    # レビューページ（8/21追加）
    resources :reviews, only: %i[new create edit update destroy]
  end

  # ユーザーページ（8/12追加）
  resources :users, only: %i[new create show]

  # ログインページ（8/12追加）
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'about', to: 'pages#about'
end
