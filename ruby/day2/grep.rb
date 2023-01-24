#!/usr/bin/env ruby
file = ARGV[0]
expr = Regexp.new(ARGV[1])
line_number = 0

File.foreach(file) do |line|
  line_number += 1
  print "#{line_number}: #{line}" if expr.match(line)
end
