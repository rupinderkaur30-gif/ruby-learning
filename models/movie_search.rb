class MovieSearch
    attr_reader   :movies

    def initialize(input)
        search(input) 
    end

    def search(input)
        url = "https://api.themoviedb.org/3/movie/popular?api_key=09e6a620ac7883cad951562880764439&language=en-US&page=2"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        res = JSON.parse(response)
        @movies = res["results"]
    end
end