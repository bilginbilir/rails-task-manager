Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # INDEX / list of all tasks:
  get "tasks", to: "tasks#index"
  # NEW + CREATE:
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # EDIT + UPDATE:
  get"tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  #DELETE:
  delete "tasks/:id", to: "tasks#destroy"
  # SHOW:
  get "tasks/:id", to: "tasks#show", as: :task
end
