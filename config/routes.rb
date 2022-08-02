Rails.application.routes.draw do
  resources :users do
    resources :foods, except: [:edit,]
    resources :recipes, except: [:edit] do
      resources :lists, only: [:index]
      resources :recipe_foods
    end
  end  
end
