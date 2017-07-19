Rails.application.routes.draw do

  devise_for :users

  

  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
    resources :blogs do
    member do
      get :toggle_status
    end
  end



  get 'about-me', to: 'pages#about'
  get 'contact-me', to: 'pages#contact'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end
