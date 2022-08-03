Rails.application.routes.draw do

  root to: "home#index"

  resources :users do
    resources :foods, except: [:edit,]
    resources :recipes, except: [:edit] do
      resources :lists, only: [:new, :create, :destroy]
    end
  end  
end
