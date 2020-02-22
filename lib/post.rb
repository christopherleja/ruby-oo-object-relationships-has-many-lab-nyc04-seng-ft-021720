class Post
  
  @@all = []
  
  attr_accessor :author, :title, :author_name
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    author.name if self.author
  end
end