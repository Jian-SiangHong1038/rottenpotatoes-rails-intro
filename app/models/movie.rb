class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:raing).distinct.injet([]) {|a, m| a.push m.rating} 
    end
end
