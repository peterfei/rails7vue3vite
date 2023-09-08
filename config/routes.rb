Rails.application.routes.draw do
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blogs#index"
  namespace :api, defaults: { format: :json } do
    namespace :mock, defaults: { format: :json } do
      get '/blogs', to: 'blogs#blogs_json'
      get '/single-post/:id', to: 'blogs#single_post_json'
      post "/login", to: "blogs#login"
      get "/admin_info", to: "blogs#admin_info"
      namespace :dashboard, defaults: { format: :json } do
        get "/console", to: "console#console"
      end
      namespace :menu, defaults: { format: :json } do
        get "/list", to: "menu#index"
      end
      namespace :role,defaults:{format: :json} do
        get "/list",to: "role#index"
      end
      namespace :table,defaults:{format: :json} do
        get "/list",to: "table#index"
      end
    end
  end
end
