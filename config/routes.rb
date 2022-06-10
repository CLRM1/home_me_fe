Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "welcome#index"

  get "/results", to: "results#index"

  get "/shelters", to: "results#all_shelters"

  get "/shelters/:name", to: "results#show"

  get "/auth/google_oauth2/callback", to: "users#create"

  get "users/log_in", to: "users#login_form"

  post "/dashboard", to: "users#login"

  get "/users/signup", to: "users#signup"

  post "/users", to: "users#save"

  get "/users", to: "users#destroy"

  get "/dashboard", to: "users#show"

  post "/save_shelter", to: "results#save"

  delete "/users/:user_id/shelters/:shelter_id", to: "results#destroy"
end
