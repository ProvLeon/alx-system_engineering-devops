#!/usr/bin/env ruby

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

input_string = ARGV[0]

# Regular expression to match "School"
matches = input_string.scan(/School/)

# Join the matches into a single string
result = matches.join

puts result
