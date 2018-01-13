class Artist
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

  def add_song(song)
    @songs<<song unless @songs.include?(song)
    song.artist = self unless song.artist
  end

  def genres
    @songs.collect{|song| song.genre}.uniq
  end


end
