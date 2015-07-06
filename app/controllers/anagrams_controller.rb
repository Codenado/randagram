class AnagramsController < ApplicationController
  def index
 
  end	

  def find
   	@word = Word.find_by(text: params["term"]) 
   	if @word
      @anagrams = Word.where(anagram_key: @word.anagram_key).where.not(text: @word.text)
   	end
    render partial: "anagrams"
  
  end

  
end
