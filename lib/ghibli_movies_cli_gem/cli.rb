class GhibliMoviesCliGem::CLI

    def start
        @films = GhibliMoviesCliGem::API.get_films
        puts ""
        puts "Welcome to Studio Ghibli Universe!"
        puts ""
        menu
    end

    def menu
        puts "------ What do you like to see? ------"
        puts ""
        puts "1. Top 10 movies by Rottten Tomato."
        puts "2. List of all movies"
        puts "3. Exit"
        puts ""
    
        input = gets.strip
    
        case input
            when "1"
                list_by_score
            when "2"
                puts "------ Number two: List of all movies ------"
                puts ""
                list_all_movies    
            when "3"
                exit
            else
                puts "You just making it up!"
        end
    end

    def list_all_movies
        @films.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def list_by_score
        list_films_score = Array.new(){Hash.new}
        binding.pry
        @films.each do |film|
            list_films_score[0]["#{film.score}"] = "#{film.title}"
        end
        list_films_score
    end


end