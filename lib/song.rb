require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def artist_name(name)
    Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = self.new(data[1])
    song.artist = song.artist_name(data[0])
    song.artist = song.artist_name(filename[0])
    song.artist.add_song(song)
    song.artist.save
    song
  end
end
