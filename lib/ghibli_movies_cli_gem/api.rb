class GhibliMoviesCliGem::API

    def self.get_films
        response = RestClient.get('https://ghibliapi.herokuapp.com/films')
        raw = JSON.parse(response)      
        raw.map do |r|  
            binding.pry           
            GhibliMoviesCliGem::FILM.new_from_json(r)
            # film = GhibliMoviesCliGem::FILM.new_from_json(r)
            # film.id = r["id"]
            # film.title = r["title"]
            # film.description = r["description"]
            # film.director = r["director"]
            # film.producer = r["producer"]        
            # film.release_date = r["release_date"]        
            # film.score = r["rt_score"]    
            # film
        end
    end

end