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
  
  def posts
    Posts.all.select do |post| 
      post.author == self
    end
  end
  
  def add_post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
    
  
end