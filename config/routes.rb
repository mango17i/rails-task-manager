Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # All restaurants
  get 'tasks', to: 'tasks#index'
  # Create
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # Read
  # # One restaurant
  get 'tasks/:id', to: 'tasks#show', as: "task"
  # # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  patch 'tasks/:id', to: 'tasks#update'
  # # Delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
