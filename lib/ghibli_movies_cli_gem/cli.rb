class GhibliMoviesCliGem::CLI

    def start
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
            when "2"
                puts "2. List of all movies"
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