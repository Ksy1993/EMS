Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/index'
  get 'comments/edit'
  get 'comments/show'
  get 'events/index'
  get 'events/new'
  get 'events/edit/:id' => "events#edit"
  get 'events/destroy/:id' => "events#destroy"
  get 'events/create'
  get 'events/show'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :events, :home, :comments
end
