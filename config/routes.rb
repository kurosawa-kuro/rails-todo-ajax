Rails.application.routes.draw do
  root :to => 'todos#index'
  resources :todos, only: [:index, :update, :destroy, :create]
  post 'ajax_todos_create', to: 'todos#ajax_create', as: 'ajax_todos_create'
end