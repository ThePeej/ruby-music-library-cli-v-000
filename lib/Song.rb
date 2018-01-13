class Song
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
   @genre = genre
   genre.songs << self unless genre.songs.include?(self)
 end

 def self.new_from_filename(file)
   name_array = file.split(" - ")
   artist_name, song_name, genre_name = name_array[0], name_array[1], name_array[2].gsub(".mp3","")
   artist = Artist.find_or_create_by_name(artist_name)
   genre = Genre.find_or_create_by_name(genre_name)
  #  binding.pry
   self.new(song_name,artist,genre) unless self.find_by_name(song_name)
 end

 def self.create_from_filename(file)
   self.new_from_filename(file).save
 end
 
end
