Rails.application.routes.draw do
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticate :user do
	resources :movies, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :movies, only: [:index, :show]
  resources :users, only: [:show]
  get "/pages/:page" => "pages#show"
  root 'pages#home'
end
