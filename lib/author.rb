class Author
  
  attr_accessor :name, :posts, :title
  @@names = []
  
  def initialize(name)
    @name = name
    @@names << self
  end
  
  def self.all
    @@names
  end
  
  def self.posts
    @@names.all.select do |post| 
      post.name 
  end
  
  
end