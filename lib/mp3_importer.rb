class MP3Importer
  attr_accessor :path, :files

  def initialize(folder_path)
    @path = folder_path
  end

  def files
    basedir = @path
    @files = Dir.glob("*.mp3")
  end

  def import
    @files.each { |filename| Song.new_by_filename(filename)}
  end

end
