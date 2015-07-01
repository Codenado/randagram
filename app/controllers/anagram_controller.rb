class AnagramController < ApplicationController
  def index
  	@length = check("cinema", Length.where(size: 6).first)

  end	

  def find
  	length = Length.where(size: params["term"]).first
  	anagram = check(params["term"], length.words)

  	if anagram 

  	else
  	end	

  end

  private

  def check(term, length)
  	vaild_word = false 
  	anagrams = []
  	i  = 0
  	length.words.each do |word|
  		if word.text.split("").sort == term.split("").sort
  			if word.text == term
  				vaild_word = true
  			else
  				anagrams << word.text
  			end	
  			p word.text.split("").sort	 
  		end
  		p word.text.split("").sort	
  	end
  	if vaild_word
  		return anagrams
  	else
  		return "????"
  	end
  end		
end
