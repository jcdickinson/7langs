answer = rand(1..10)
puts 'I am guessing a number between 1 and 10'
loop do
  puts 'What is your guess?'
  guess = Integer(gets)
  if guess == answer
    puts 'You guessed it!'
    break
  elsif guess > answer
    puts 'Your guess is too high!'
  elsif guess < answer
    puts 'Your guess is too low!'
  end
end
