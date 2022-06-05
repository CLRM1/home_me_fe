Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/results', to: 'results#index'

  get '/shelters', to: 'results#all_shelters'
  get '/shelters/:name', to: 'results#show'
end
