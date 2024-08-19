module ArtistsHelper
  def display_artist(song)
    return link_to "Add Artist", edit_song_path(song) if song.artist.nil?
    link_to song.artist.name, artist_path(song.artist)
  end
end
