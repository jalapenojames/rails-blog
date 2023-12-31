Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get 'welcome/index'
  get "/articles", to: "articles#index"

  resources :articles do
    resources :comments
  end
end
