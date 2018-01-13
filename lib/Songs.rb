class Song
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods


  attr_accessor :name, :artist, :genre

  @@all = []


  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist if artist
    @genre = genre if genre
  end

  def self.all
    @@all
  end

end
