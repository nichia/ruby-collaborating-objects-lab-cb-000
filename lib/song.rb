require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = self.new(data[1])
    song.artist = data[0]
      song = self.new
      song.title = filename.split(" - ")[1]
      song
  end
end
