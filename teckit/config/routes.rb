Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cities, :genres, :movie_theatres, :movies, only: [:index, :show]
  root to: 'welcome#index'
  get '/testpage', to: 'welcome#testpage'
end
