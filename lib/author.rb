class Author
  
  attr_accessor :name, :posts, :title
  @@names = []
  
  def initialize(name)
    @name = name
    @@names << self
  end
  
  def self.posts
    @@names
  end
  
  
end