file = File.new('tmp/test.txt', 'w')
if file
  file.write('test')
else
  puts 'Unable to access file'
end
