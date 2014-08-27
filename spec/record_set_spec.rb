require_relative 'spec_helper'

describe "RecordSet" do
	let(:empty_record_set){RecordSet.new}
	let(:spencer){Record.new(first_name: "spenceR", last_name: "olSon", gender: "m", favorite_color: "blUe", date_of_birth: "10/18/1988")}
	let(:joe){Record.new(first_name: "Joe", last_name: "Shmoe", gender: "M", favorite_color: "brown", date_of_birth: "1/1/1980")}
	let(:jane){Record.new(first_name: "Jane", last_name: "Doe", gender: "F", favorite_color: "red", date_of_birth: "1/1/1976")}

	let(:record_set){RecordSet.new}
	before do
		record_set.add_record(spencer)
		record_set.add_record(joe)
		record_set.add_record(jane)
	end

	describe "#add_record" do
		it "should add a Record" do
			empty_record_set.add_record(spencer)
			expect(empty_record_set.records.count).to eq 1
		end
	end

	describe "#gender_sort" do
		it "should sort by gender (female first), then by last name ascending" do
			expect(record_set.gender_sort.first).to eq jane
			expect(record_set.gender_sort[1]).to eq spencer
		end
	end

	describe "#birth_date_sort" do 
		it "should sort by birth date, ascending" do 
			expect(record_set.birth_date_sort.first).to eq jane
			expect(record_set.birth_date_sort[1]).to eq joe
		end
	end

	describe "#last_name_sort" do 
		it "should sort by last name, descending" do 
			expect(record_set.last_name_sort.first).to eq joe
			expect(record_set.last_name_sort[1]).to eq spencer
		end
	end


end
