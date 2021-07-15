Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/opprtunity/:id', to: 'opportunity#show'
  get '/profiles/:username', to: 'profile#show'
end
