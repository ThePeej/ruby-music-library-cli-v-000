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

end
