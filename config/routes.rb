Rails.application.routes.draw do
  resources :photos
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'landing#entry'
end
