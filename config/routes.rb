Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index', as: :tasks
  # retrieve form for new
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # retrieve a single task, display
  get '/tasks/:id', to: 'tasks#show', as: :task
  # edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # send form with new task info
  patch '/tasks/:id', to: 'tasks#update'

  # destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'


end
