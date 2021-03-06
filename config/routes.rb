Rails.application.routes.draw do
  get '/', to: 'songs#index'
  resources :songs, except: [:update]
  patch '/songs/:id', to: 'songs#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
