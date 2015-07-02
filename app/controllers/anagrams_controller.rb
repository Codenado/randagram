class AnagramsController < ApplicationController
  def index
 
  end	

  def find
  	if params["term"].length
  		length = Length.where(size: params["term"].length).first
  		if length
  			@anagram = check(params["term"], length.words)
  		end	
  	end 
 	
  end

  private

  def check(term, words)
  	vaild_word = false 
  	anagrams = []
  	term_check = term.split("").sort
  	i  = 0
  	words.each do |word|
  		if word.text.split("").sort == term_check
  			if word.text == term
  				vaild_word = true
  			else
  				anagrams << word.text
  			end	 
  		end
  	end
  	if vaild_word
  		return anagrams.sample
  	else
  		return "????"
  	end
  end		
end
