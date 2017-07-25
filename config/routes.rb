Rails.application.routes.draw do
  resources :portfolios, except: [:show, :destroy]
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}



  get 'portfolio/:id', to: 'portfolios#destroy', as: 'portfolio_destroy'
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
