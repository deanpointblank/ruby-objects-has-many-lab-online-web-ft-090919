class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|x| x.author == self}
  end
  
  def add_post(post)
    post
  end
end