Rails.application.routes.draw do

  root "articles#index"
  # Maps the root path of our application to the
  # appropriate controller and action

  resources :articles do
    resources :comments
  end

  ## FOR REFERENCE ONLY ##

  # get "/articles", to: "articles#index"
  # Declares that GET /articles requests are mapped
  # to the index action of ArticlesController

  # get "/articles/:id", to: "articles#show"
  # :id designates a route parameter. A route parameter
  # captures a segument of the request's path, and
  # puts that value into the params Hash, which is
  # accessible by the controller action













  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
