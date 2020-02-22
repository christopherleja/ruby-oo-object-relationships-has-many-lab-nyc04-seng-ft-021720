

class Artist 

attr_accessor :name
  @@names = []
  
  def initialize(name)
    @name = name
    @@names << self
  end
  
  def self.all
    @@names
  end
  
  def songs
    @@names.all.select do |song| 
      name == self.name
      
    end
  end
  
  def add_song(name)
    new_song = Song.new(self, name)
    new_song.artist = self.name
    #@@all << new_song
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