#encoding=utf-8
#괄호를 맞게 썼는지 검사하는 프로그램(1)

def par_check(str)
  par_array = str.split('')
  count = 0
  par_array.each do |p|
    if p == "("
      count += 1
    elsif p == ")"
      count -= 1
    end

    if count < 0
      break
    end
  end

  if count == 0
    return true
  else
    return false
  end
end

while true
  print "Please type some parentheses: "
  input = gets.chomp.to_s
  if par_check(input)
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
