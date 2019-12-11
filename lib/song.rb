class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    song.save 
    song 
  end
  
  def self.new_by_name(song_name)
    song = Song.new
    song.name= song_name
    song 
  end
  
  def self.create_by_name(song_name)
    song = Song.new_by_name(song_name)
    song.save 
    song 
  end
  
  def self.find_by_name(song_name)
    found = @@all.find{|song| song == song_name}
  end

end
