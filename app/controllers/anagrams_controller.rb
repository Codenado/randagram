class AnagramsController < ApplicationController
  def index
 
  end	

  def find
  	if params["term"]
  		length = Length.find_by(size: params["term"].length)
  		if length
  			@anagrams = check(params["term"], length.words)
  		end	
  	end 
 	   
  end

  private

  def check(term, words)
  	valid_word = false 
  	anagrams = []
  	term_check = term.split("").sort
  	i = 0
  	words.each do |word|
  		if word.text.split("").sort == term_check
  			if word.text == term
  				valid_word = true
  			else
  				anagrams << word
  			end	 
  		end
  	end
  	if valid_word
  		return anagrams
  	else
  		return "????"
  	end
  end		
end
