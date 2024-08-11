Rails.application.routes.draw do
  root "foods#search"

  # Foodページ（8/11追加）
  resources :foods, only: %i[index] do
    collection do
      get :search
    end
  end
end
