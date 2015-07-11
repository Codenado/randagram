class AnagramsController < ApplicationController
  def index
 
  end	

  def find
   	@word = Word.find_by(text: params["term"]) 
   	respond_to do |format|
	   	if @word
	      @anagrams = Word.where(anagram_key: @word.anagram_key).where.not(text: @word.text)
	   	end
	    format.html { render partial: "anagrams" }
  		format.json { render json: @anagrams }

  	end
  end

  
end
