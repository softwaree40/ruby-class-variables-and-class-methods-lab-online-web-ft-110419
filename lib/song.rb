require 'pry'
class Song 
  @@count = 0        #We create class variables that keeps track all numbers of songs created
   @@artists = []    #We create class variables of all artist 
   @@genres = []     #We create class variable of all genre
  attr_accessor :name, :artist, :genre #We create attr_accessor to set data to instance of object when created.
   def initialize(name , artist , genre) #We create initialize to set initial value to object once created.
      @name = name                        #We create instance variable to keep track of name of songs
      @artist = artist                 
      @genre = genre
      @@count+=1
      @@artists << artist
      @@genres << genre
    end
      def self.count 
      
      @@artists
      @@count
      #binding.pry
      #binding.pry
    end
      def self.artists
         @@artists.count
         #binding.pry
         @@artists.uniq
      end
        def self.genres
         
         @@genres.uniq
        end
      def self.genre_count
         hash_new = Hash.new(0)
         
        @@genres.each do |genre|
         
           #binding.pry
            #'wait'
            hash_new[genre]+=1
         end
       end
    end
  
 