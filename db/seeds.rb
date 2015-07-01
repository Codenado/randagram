# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.open("db/dictionary.txt", "r").each_line do |word|
	length = Length.find_or_create_by(size: word.chomp.length)
	length.words.create(text: word.chomp)
end	