class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    post.all.select {|x| x.author == self}
  end
  
end