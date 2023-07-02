class Movie

    attr_reader :title, :vote_count

 def initialize(hash)
    @title = hash["title"]
    @vote_count = hash["vote_count"]
 end

 def print_summary
    puts title
    puts vote_count
    puts "*****"
 end

 
end