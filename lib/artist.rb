class Artist 

attr_accessor :name, :songs, :title, :artist_name
  
  def initialize(name)
    @name = name
    @artist_name = artist_name
    #@songs = []
  end
  
  def add_song(name)
    new_song = Song.new(self, name)
    song.artist = @name
  end
  
  def song_count
    Song.all.count do |song| 
      song.artist_name == self
  end
  end
  
  def add_song_by_name(name)
    Song.name = name
    song.artist_name = self.artist_name
  end
end