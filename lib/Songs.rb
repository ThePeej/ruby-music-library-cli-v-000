class Song
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods


  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []


  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist if artist
    @genre = genre if genre
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    Artist.add_song(self)
  end

end
