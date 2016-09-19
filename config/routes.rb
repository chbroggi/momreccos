Rails.application.routes.draw do
  resources :car_sharings
  resources :players
  resources :parents
  resources :events
  resources :teams
  resources :coaches
  resources :clubs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
