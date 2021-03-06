Rails.application.routes.draw do

  get '/entries/admin', to: 'entries#admin'

  resources :entries do
    resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users, except: [:registration_path]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html'


  root 'entries#index'
end
