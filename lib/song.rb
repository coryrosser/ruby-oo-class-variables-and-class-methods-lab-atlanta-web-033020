class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq!
    end
    def self.genres
        @@genres.uniq!
    end
    def self.genre_count
        @@genres.group_by(&:itself).transform_values!(&:size)
    end
    def self.artist_count
        @@artists.group_by(&:itself).transform_values!(&:size)
    end
    



end