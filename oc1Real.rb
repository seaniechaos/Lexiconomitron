class Lexiconomitron
	def shazam (array)
		return nil if array.empty?
		string = array.map {|word| word.reverse}
		rev_string = string.map {|w| w.downcase.gsub "t",""}
		array = [rev_string.first, rev_string.last]
	end

	def oompa_loompa (array)
		return nil if array.empty?
		string = array.map { |line| line.strip }
		no_t_string = string.map {|w| w.downcase.gsub "t",""}
		wordlength = gets.to_i
		string.delete_if { |word| word.length > 3 }
	end

	def all_in_line (array)
		return nil if array.empty?
		string = array.map {|w| w.downcase.gsub "t",""}
		new_string = string.sort{|x, y| y.length <=> x.length}
		new_string.join("$")
	end

	def supercounter (array)
		return nil if array.empty?
		string = array.map {|w| w.downcase.gsub "t",""}
		string.join.length
	end

	private

	def minust(string)
		return nil if string.empty?
		string.gsub(/[t]/, '')
	end 
end