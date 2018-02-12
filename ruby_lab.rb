
#!/usr/bin/ruby
###############################################################
#
# CSCI 305 - Ruby Programming Lab
#
# <Chenwei> <Cao>
# <ccw5241@gmail.com>
#
###############################################################

$bigrams = Hash.new # The Bigram data structure
$name = "<Chenwei> <Cao>"
# function to process each line of a file and extract the song titles
song = Regexp.new('%[\w]+<SEP>+[\w]+<SEP>+[\w \s]+<SEP>+[\w\s]+()')
tid = /%[\w]/
sid = /[\w]/
artName = /[\w \s]/
stitle = /[\w\s]+()?*_-!@#^&/
def process_file(a_tracks.txt)
	puts "Processing File.... "

	begin
		IO.foreach(a_tracks.txt, encoding: "utf-8") do |line|
			# do something for each line
			show_title(line, /[\w\s]+()?*_-!@#^&/)
			puts "The song title is: " + show_title
		else
			puts "dont have song title"
		end

		puts "Finished. Bigram model built.\n"
	rescue
		STDERR.puts "Could not open file"
		exit 4
	end
end

# Executes the program
def main_loop()
	puts "CSCI 305 Ruby Lab submitted by #{$name}"

	if ARGV.length < 1
		puts "You must specify the file name as the argument."
		exit 4
	end

	# process the file
	process_file(ARGV[0])

	# Get user input
end

if __FILE__==$0
	main_loop()
end
