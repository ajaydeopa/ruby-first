Rails.application.routes.draw do
  root 'welcome#index'

  get '/save' => 'welcome#saved'

  resources :articles
  resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end