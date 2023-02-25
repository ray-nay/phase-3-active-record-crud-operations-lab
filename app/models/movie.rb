class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        movie = Movie.create(title: title)
    end 
    def self.first_movie
        firstmovie=Movie.first
    end
    def self.last_movie
        lastmovie=Movie.last
    end
    def self.movie_count
        totalmovies=Movie.count
    end
    def self.find_movie_with_id(id)
        chosenmovie=Movie.find(id)
       
    end
    def self.find_movie_with_attributes(title:, release_date:)
        att=Movie.find_by(:title => "Movie_0", :release_date => 2000)
       
    end

    def self.find_movies_after_2002
        movies = Movie.where('release_date > ?', 2002)
        return movies
      end
      def update_with_attributes(attributes)
        update(attributes)
      end
        
      def self.update_all_titles(new_title)
        update_all(title: new_title)
      end

      def self.delete_by_id(movie_id)
        movie = find_by(id: movie_id)
        if movie
          movie.destroy
          return true
        else
          return false
        end
      end
      def self.delete_all_movies
        delete_all
      end
      
end