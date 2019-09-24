class Author
  attr_accessor :name, :post_count
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|x| x.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end
  
  def post_count
    @@post_count = Post.all.length
  end
end