Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/jobs/:id', to: 'job#show'
  get '/profiles/:username', to: 'profile#show'
end
