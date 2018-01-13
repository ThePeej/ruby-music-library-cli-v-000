class Genre
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods
  extend Concerns::Findable

  attr_accessor :name, :songs, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def artists
    @songs.collect{|song| song.artist}.uniq
  end

end
