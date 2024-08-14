Rails.application.routes.draw do
  # トップページ（8/11追加）
  root "foods#search"

  # Foodページ（8/11追加）
  resources :foods, only: %i[index show] do
    collection do
      get :search
    end
  end

  # ユーザーページ（8/12追加）
  resources :users, only: %i[new create show]

  # ログインページ（8/12追加）
  # /loginにアクセスされた場合、user_sessionsコントローラーのnewアクションを呼び出す
  get 'login', to: 'user_sessions#new'
  # /loginに対してPOSTリクエストが送信された場合、user_sessionsコントローラーのcreateアクションを呼び出す
  post 'login', to: 'user_sessions#create'
  # /logoutに対してDELETEリクエストが送信された場合、user_sessionsコントローラーのdestroyアクションを呼び出す
  delete 'logout', to: 'user_sessions#destroy'
end
