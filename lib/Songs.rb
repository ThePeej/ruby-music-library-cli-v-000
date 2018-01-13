class Songs
attr_accessor :name, :artist, :genre

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist if artist
    @genre = genre if genre
  end


end
