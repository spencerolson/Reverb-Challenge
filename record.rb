class Record
	def initialize args
		@first_name = args[:first_name].capitalize
		@last_name = args[:last_name].capitalize
		@gender = args[:gender].upcase
		@favorite_color = args[:favorite_color].downcase
		@date_of_birth = args[:date_of_birth]
	end

	def to_s
		"#{@last_name} #{@first_name} #{@gender} #{@favorite_color} #{@date_of_birth}"
	end
end