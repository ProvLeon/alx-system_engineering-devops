#!/usr/bin/env ruby

def match_school(string)
  regex = /School/
  match_data = string.match(regex)
  match_data ? match_data[0] : ""
end

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
else
  input_string = ARGV[0]
  matched = match_school(input_string)
  puts matched
end
