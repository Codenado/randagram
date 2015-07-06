class AnagramsController < ApplicationController
  def index
 
  end	

  def find
   @word = Word.find_by(text: params["term"]) 
      @words = Word.where(anagram_key: @word.anagram_key)
        render :words
  
  end

  
end
