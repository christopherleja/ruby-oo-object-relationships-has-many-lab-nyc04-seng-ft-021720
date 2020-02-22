class Song 
  
  attr_accessor :name, :title, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name(name)
    self.artist_name = Artist.name
  end
end