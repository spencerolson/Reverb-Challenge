require_relative 'parser'

if ARGV.empty?
	puts "You must provide at least one file as an argument"
else
	parser = Parser.new()
	record_set = RecordSet.new()
	ARGV.each do |file| 
		parser.parse(file).each do |record|
			record_set.add_record(record)
		end
	end
	ARGV.clear
	puts "How would you like to see the data ordered? (G)ender, (B)irthday, or (L)ast Name?"
	ans = gets.chomp.downcase

	if ans == "g" || ans == "gender"
		puts record_set.gender_sort
	elsif ans == "b" || ans == "birthday"
		puts record_set.birth_date_sort
	elsif ans == "l" || ans == "last name"
		puts record_set.last_name_sort
	else
		puts "Incorrect response."
	end
end


