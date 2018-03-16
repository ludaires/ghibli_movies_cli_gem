class GhibliMoviesCliGem::FILM

    attr_accessor :title, :description, :director, :producer, :release_date, :score, :id

    @@all = []

    def initialize
        @@all << self
    end

    def self.new_from_json(film)
        film_info = self.new
        film_info.id = film["id"]
        film_info.title = film["title"]
        film_info.description = film["description"]
        film_info.director = film["director"]
        film_info.producer = film["producer"]        
        film_info.release_date = film["release_date"]        
        film_info.score = film["rt_score"]
        film_info
    end

    def self.all
        @@all
    end

end


