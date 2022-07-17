class Movie < ActiveRecord::Base
  # ... need to declare it as self.
  def self.similar_movies movie
    director = Movie.find_by_title(movie).director
    if director.nil? or director.blank? 
      return nil
    else 
      # here i need to return movies with same director
      Movie.where(director: director)
    end 
  end
end
