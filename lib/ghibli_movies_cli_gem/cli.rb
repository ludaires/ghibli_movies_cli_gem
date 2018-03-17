class GhibliMoviesCliGem::CLI

    def start
        @films = GhibliMoviesCliGem::API.get_films
        puts "n/"
        puts "Welcome to Studio Ghibli Universe!"
        puts "n/"
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
                puts "1. Top 10 movies by Rottten Tomato."
                # puts films.score
            when "2"
                puts "------ You choose number two ------"
                puts ""
                puts "2. List of all movies"
                puts ""
                count = 0
                @films.each do |f|
                    count=count+1
                    puts "#{count}. #{f.title}"
                end
                
            when "3"
                puts "3. Exit"
            else
                puts "You just making it up!"
            end
            # @films[0..10].each do |f| 
        #     puts "#{f.title}"
        # end
        
    end

end