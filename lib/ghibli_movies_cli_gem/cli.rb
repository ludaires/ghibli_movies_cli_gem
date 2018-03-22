class GhibliMoviesCliGem::CLI

    def start
        @films = GhibliMoviesCliGem::API.get_films
        puts ""
        puts "Welcome to Studio Ghibli Universe!"
        puts ""
        main_menu
    end

    def main_menu
        puts "------ What do you like to see? Choose a number from the menu options------"
        puts ""
        puts "1. Top 10 movies by Rottten Tomato."
        puts "2. List of all movies"
        puts "3. Exit"
        puts ""
    
        input = gets.strip.to_s.downcase
    
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
                puts "You just making it up! Pleaes, choose a number 1 - 3 according to the menu option."
                main_menu
            end
    end

  #This method sort the movies by score.
    def movies_sort
        films = @films.sort_by do |f|
            f.score.to_i
        end.reverse!
    end

    #This method list all movies depending on user creteria. 
    def list_movies(user_input)        
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
        input = gets.strip.to_i
        films = movies_sort

        if input < 1 || input > 20
            puts "You just making it up! Please, choose a valid number (1 to 20) according to the menu option."
            puts ""
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
            puts "You just making it up! Please, choose a valid number (1 to 3) according to the menu option."
            main_menu
        end
    end

    def goodbye
        puts "Bye, bye. Hope to see you soon"
        exit
    end
    
    #TODO: Implement a valid input method. 

    # def input_valid!(input)
    #     # it's valid if the input is a number
    #     input.to_i
    #     binding.pry
    #     case input
    #         when [0..20] This is not going to work as string.
    #             main_menu
    #         when "exit"
    #             goodbye
    #         else
    #             puts "You just making it up! Please, choose a valid number (1 to 20) according to the menu option."
    #     end
    # end


    
end