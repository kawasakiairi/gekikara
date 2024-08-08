Rails.application.routes.draw do
  root "foods#search"

  resources :foods, only: %i[index] do
    collection do
      get :search
    end
  end
end

