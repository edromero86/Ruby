input_file = ARGV.first   # get the filename to work with from first argument

def print_all(f)
	puts f.read
end

def rewind(f)
	f.seek(0)
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now lets rewind, kind of like tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)


# seek() function seeks to a given offset an Interget in the stream according to the value of whence:

# read() function opens the file, optionally seeks to the given offset, then returns length bytes. 
# read ensures the file is closed before returning. 




