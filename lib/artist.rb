class Artist 

attr_accessor :name, :songs, :title, :artist_name
  
  def initialize(name)
    @name = name
    @artist_name = self
    #@songs = []
  end
  
  def add_song(name)
    new_song = Song.new(name)
    new_song.artist = @name
  end
  
  def self.song_count
    Song.all.count do |song| 
      song.artist_name == self
  end
  end
  
  def add_song_by_name(name)
    Song.name = name
    song.artist_name = self.artist_name
  end
end