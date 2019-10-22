Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Read all
  get "/tasks", to: "tasks#index", as: "tasks"
  #New
  get "/tasks/new", to: "tasks#new", as: "new_task"
  #Create
  post "/tasks", to: "tasks#create"
  #Read one
  get "/tasks/:id", to: "tasks#show", as: "task"

  # #Update
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "/tasks/:id", to: "tasks#update"

  #Delete
  delete "tasks/:id", to: "tasks#destroy"
end
