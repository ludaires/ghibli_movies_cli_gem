class GhibliMoviesCliGem::CLI

    def start
        @films = GhibliMoviesCliGem::API.get_films
        puts ""
        puts "Welcome to Studio Ghibli Universe!"
        puts ""
        main_menu
    end

    def main_menu
        puts "------ What do you like to see? ------"
        puts ""
        puts "1. Top 10 movies by Rottten Tomato."
        puts "2. List of all movies"
        puts "3. Exit"
        puts ""
    
        input = gets.strip
    
        case input
            when "1"
                puts "------ Number One: List of all movies ------"
                puts ""
                list_movies(1)
                movie_menu
            when "2"
                puts "------ Number Two: List of all movies ------"
                puts ""
                list_movies(2) 
                movie_menu
            when "3"
                exit
            else
                puts "You just making it up!"
        end
    end

    # def list_all_movies
    #     @films.each.with_index(1) do |film, index|
    #         puts "#{index.to_s.rjust(2, "0")}. #{film.title} - Score #{film.score}"
    #     end
    # end

    # Transforme this method to be the only one to list movies"

    def movies_sort
        films = @films.sort_by do |f|
            f.score.to_i
        end.reverse!
    end

    def list_movies(user_input)        
        # films = @films.sort_by do |f|
        #     f.score.to_i
        # end
        # films.reverse!

        films = movies_sort

        if user_input == 1
            films.first(10).each.with_index(1) do |film, index|
                puts "#{index.to_s.rjust(2, "0")}. #{film.title} - Score #{film.score}"
            end       
        elsif user_input == 2
            films.each.with_index(1) do |film, index|
                puts "#{index.to_s.rjust(2, "0")}. #{film.title} - Score #{film.score}"
            end
        end

    end

    def movie_menu

        puts "Choose movie number to get more information about it."
        input = gets.strip

        films = @films.sort_by do |f|
            f.score.to_i
        end

        films.reverse!
        film_detail = films[input.to_i - 1]
        
        puts "-----#{film_detail.title}------"
        puts "-----Score:#{film_detail.score}------"

        puts ""
        puts "Director:"
        puts film_detail.director
        puts ""
        puts "Producer:"
        puts film_detail.producer
        puts ""
        puts "Release Date:"
        puts film_detail.release_date
        puts ""
        puts "Description:"
        puts film_detail.description
    end
        
    
end