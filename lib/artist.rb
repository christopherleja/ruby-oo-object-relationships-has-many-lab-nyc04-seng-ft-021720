

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
    Song.all.select do |song| 
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(song)
    song.artist = self
  end
end