File.open('tmp/foo.txt', File::RDWR | File::CREAT, 0o644) do |f|
  f.write("foo\n")
  f.flush
end
