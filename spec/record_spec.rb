require_relative 'spec_helper'

describe "Record" do
	let(:record){Record.new(first_name: "spenceR", last_name: "olSon", gender: "m", favorite_color: "blUe", date_of_birth: "10/18/1988")}

	describe "#to_s" do
		it "should return info in the correct order" do
			expect(record.to_s).to eq("Olson Spencer M blue 10/18/1988")
		end
	end
end
