class Song 
  
  attr_accessor :name, :title, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist_name = Artist.name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name(name)
    artist_name = Artist.name
  end
end