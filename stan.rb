while true
  file = File.open("stan_lyrics.txt","r")
  count = 0
  print "Input a word you want to count: "
  target_word = gets.chomp.to_s

  file.each do |line|
    words_line = line.split(' ')

    words_line.each do |word|
      if word == target_word
        count += 1
      end
    end
  end

  file.close
  puts "#{target_word}: #{count}"
end
