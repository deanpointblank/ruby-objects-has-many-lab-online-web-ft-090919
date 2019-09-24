class Post
  attr_accessor :author, :title
  @@all = []
  
  def initialize(name)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end