require 'pry'

class Song

	attr_reader :name, :artist, :genre

	@@count = 0
	@@artists = [] 
	@@genres = []
	@@genre_hash = {}
	@@artist_hash = {}

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1

		@@artists << artist
		@@genres << genre
		@@genre_hash ||= [genre]
		@@artist_hash ||= [artist]
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		@@genres.each do |genre|
			if @@genre_hash.include?(genre) == false
				@@genre_hash[genre] = 1
			else
				@@genre_hash[genre] += 1
			end
		end
		@@genre_hash
	end

	def self.artist_count	
		@@artists.each do |artist|
			if @@artist_hash.include?(artist) == false
				@@artist_hash[artist] = 1
			else
				@@artist_hash[artist] += 1
			end
		end
		@@artist_hash
	end

end