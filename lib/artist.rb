require "pry"

class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select {|x| x.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
  end
  
  def song_count
    @song_count = Song.all.length
  end
  
end