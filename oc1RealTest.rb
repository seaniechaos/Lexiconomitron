require_relative 'oc1Real.rb'

describe Lexiconomitron do 
	before do
		@lexiconomitron = Lexiconomitron.new
	end

	describe "#shazam" do
		it "should return words, reverses the letters, and returns just the first and last words without the Ts" do
		expect(@lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		end
	end

	describe "#oompa_loompa" do
		it "should remove any words from the string that are more than 3 letters" do
			expect(@lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
		end
	end

	describe "#all_in_line" do
		it "should reorder the string into word size and separate the words with a '$'" do
			expect(@lexiconomitron.all_in_line(["words", "are", "tremendously", "nice"])).to eq("remendously$words$nice$are")
		end
	end

	describe "#supercounter" do
		it "should remove the Ts from the string and then return the size of the string" do
			expect(@lexiconomitron.supercounter(["I", "am", "getting", "tired", "of", "your", "words"])).to eq(23)
		end
	end
end