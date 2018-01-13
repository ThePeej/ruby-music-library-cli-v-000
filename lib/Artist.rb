class Artist
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods


  attr_accessor :name, :songs, :genre

  @@all = []


  def initialize(name, artist = nil, genre = nil)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs<<song unless @songs.include?(song)
    song.artist = self
  end


end
