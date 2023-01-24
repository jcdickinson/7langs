four = []
(1..16).each do |n|
  four.push(n)
  if four.length == 4
    puts four.join(' ')
    four.clear
  end
end
