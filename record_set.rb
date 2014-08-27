class RecordSet
	attr_reader :records

	def initialize
		@records = []
	end

	def add_record record 
		@records << record
	end

	def gender_sort
		@records.sort!{|a, b| [a.gender, a.last_name] <=> [b.gender, b.last_name]}
	end

	def birth_date_sort
		@records.sort!{|a, b| a.date_of_birth <=> b.date_of_birth}
	end

	def last_name_sort
		@records.sort!{|a, b| b.last_name <=> a.last_name}
	end

end