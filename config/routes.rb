Rails.application.routes.draw do
  devise_for :users
  resources :user_stocks, except: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"

  devise_scope :user do

    post '/users/sign_out' => 'devise/sessions#destroy'

  end
end
