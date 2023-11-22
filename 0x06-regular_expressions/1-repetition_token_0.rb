#!/usr/bin/env ruby

def match_hbttn(string)
  regex = /hb(t{2,5})n/
  match_data = string.match(regex)
  match_data ? match_data[0] : ""
end

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <string>"
else
  input_string = ARGV[0]
  matched = match_hbttn(input_string)
  puts matched
end
