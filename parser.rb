require_relative 'record'
require_relative 'record_set'

class Parser

	def parse(file)
		records = []
		delimiter = get_delimiter(file)
		File.open(file, "r") do |f|
			f.each_line do |line|
				l = line.split(delimiter)
				records << Record.new(last_name: l[0], first_name: l[1], gender: l[2], favorite_color: l[3], date_of_birth: l[4])
			end
		end
		records
	end

	private

	def get_delimiter(file)
		first_line = File.open(file, &:readline)
		if first_line.match(/\|/)
			return " | "
		elsif first_line.match(/,/)
			return ", "
		else
			return " "
		end
	end
end
