Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Lister
  get 'tasks', to: 'tasks#index', as: :tasks
  # Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
  # Shows
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
