class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|x| x.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_posts_by_title(post_title)
    post_title = Post.new(post_title)
    
  end
end