#!/usr/bin/env ruby

def extract_phone_number(string)
  regex = /\d{10}/
  match_data = string.match(regex)
  match_data ? match_data[0] : ""
end

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <phone_number>"
else
  input_number = ARGV[0]
  extracted_number = extract_phone_number(input_number)
  if extracted_number.length == 10
    puts extracted_number
  else
    puts "Invalid phone number"
  end
end
