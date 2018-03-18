Rails.application.routes.draw do
  resources :entries do
    resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'entries#index'
end
