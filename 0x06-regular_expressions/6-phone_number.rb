#!/usr/bin/env ruby

def valid_phone_number?(string)
  regex = /\A\d{10}\z/
  string.match?(regex)
end

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <phone_number>"
else
  input_number = ARGV[0]
  if valid_phone_number?(input_number)
    puts input_number
  else
    puts "Invalid phone number"
  end
end
