Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  #routing to similar movies, now it will go to the new html
  # as: specifies the name of the route
  get 'similar_movies/:title' => 'movies#search', as: :search_similar_movies
end
