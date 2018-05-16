Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:id/wall', to: 'users#show', as: :user_wall

  resources :posts do
    resources :comments
  end

  root(to: "welcome#index")

end
