class GhibliMoviesCliGem::FILM

    attr_accessor :title, :description, :director, :producer, :release_date, :score, :id

    @@all = []

    def self.new_from_json(film)
        film_info = self.new
        film_info.id = film["id"]
        film_info.title = film["title"]
        film_info.description = film["description"]
        film_info.director = film["director"]
        film_info.producer = film["producer"]        
        film_info.release_date = film["release_date"]        
        film_info.score = film["rt_score"]
        @@all << film_info
    end

    def self.all
        @@all
    end


    #sort all films by score.
    def self.movies_sort
         @@all.sort_by do |f|
            f.score.to_i
         end.reverse!
    end
    
    #list the top 10 films
    def self.list_ten_films
        self.movies_sort.first(10).each.with_index(1) do |film, index|
            puts "#{index.to_s.rjust(2, "0")}. #{film.title} - Score #{film.score}"
        end
    end

    #list all films
    def self.list_all_films
        self.movies_sort.each.with_index(1) do |film, index|
            puts "#{index.to_s.rjust(2, "0")}. #{film.title} - Score #{film.score}"
        end
    end


end


