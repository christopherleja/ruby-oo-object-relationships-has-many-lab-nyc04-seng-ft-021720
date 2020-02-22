class Artist 

attr_accessor :name, :songs, :title, :artist_name
  
  def initialize(name)
    @name = name
    @songs = []
    @songs << self
  end
  
  def self.songs
    @songs.map do |song| 
      song.name == self.name
    end
  end
  
  def add_song(name)
    new_song = Song.new(self, name)
    new_song.artist = self.name
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