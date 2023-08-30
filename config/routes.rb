Rails.application.routes.draw do
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blogs#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      get '/blogs', to: 'blogs#blogs_json'
      get '/single-post/:id', to: 'blogs#single_post_json'
    end
  end
end
