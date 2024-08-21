Rails.application.routes.draw do
  # トップページ（8/11追加）
  root "foods#search"

  # Foodページ（8/11追加）
  resources :foods, only: %i[index show] do
    resources :favorite_foods, only: %i[create destroy]
    collection do
      get :search
    end
  end

  # ユーザーページ（8/12追加）
  resources :users, only: %i[new create show]

  # ログインページ（8/12追加）
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  # レビューページ（8/21追加）
  resources :reviews, only: %i[new create show]

  get 'about', to: 'pages#about'
end
