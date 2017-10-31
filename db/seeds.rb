require 'csv'


CSV.foreach('./db/data/billboard_lyrics_1964-2015.csv', { headers: true, header_converters: :symbol }) do |row|
  song = Song.create!(rank: row[:rank], song: row[:song], artist: row[:artist], year: row[:year], lyrics: row[:lyrics])
  puts "#{song.song} created!"
end
