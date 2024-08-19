class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(name)
    if artist
      artist.name = name
    else 
      build_artist(name: name)
    end
  end
end
