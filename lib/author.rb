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
    Posts.all.select do |post| 
      post.author == self
    end
  end
  
  def add_post(post)
    Post.new(post)
    post.author = self
  end
    
  
end