class GhibliMoviesCliGem::API

    def self.get_films
        response = RestClient.get('https://ghibliapi.herokuapp.com/films')
        raw = JSON.parse(response)      
        raw.map do |r|           
            GhibliMoviesCliGem::FILM.new_from_json(r)
        end
    end

end