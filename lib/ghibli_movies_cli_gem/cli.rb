class GhibliMoviesCliGem::CLI

    def start
        GhibliMoviesCliGem::API.get_films
        puts ""
        puts "Welcome to Studio Ghibli Universe!"
        puts ""
        main_menu
        goodbye
    end

    def main_menu
        puts "------ What do you like to see? Please choose a number ------"
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
                puts ""
                movie_menu
            when "2"
                puts "------ Number Two: List of all movies ------"
                puts ""
                list_movies(2)
                puts "" 
                movie_menu
            when "3"
                goodbye
            else
                error_message
                main_menu
            end
    end

    #This method list all movies depending on user criteria. 
    def list_movies(user_input)        
        if user_input == 1    
            GhibliMoviesCliGem::FILM.list_ten_films
        elsif user_input == 2
            GhibliMoviesCliGem::FILM.list_all_films
        end
    end

    # Show detailed information about the choose movie
    def movie_menu
        puts "Choose movie number to get more information about it."
        input = gets.strip.to_i
        films = GhibliMoviesCliGem::FILM.movies_sort

        if input < 1 || input > 20
            error_message
            movie_menu
        else
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
            puts ""
        end
            more_interaction

    end

    def more_interaction
        puts "Do you like to see another movie information? Type Y to Yes, N to No."
        input = gets.strip.to_s.downcase

        if input == "y" || input == "yes"
            puts ""
            list_movies(2)
            puts ""
            movie_menu
        elsif input == "n" || input == "no"
            goodbye
        else
            error_message
            more_interaction
        end
    end

    def error_message
        puts ""
        puts "You just making it up! Please, choose according to the menu option."
        puts ""
    end

    def goodbye
        puts "Bye, bye. Hope to see you soon"
        exit
    end
    
    #TODO: Implement a valid input method. 
    
end