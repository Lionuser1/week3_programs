#encoding=utf-8
#괄호를 맞게 썼는지 검사하는 프로그램(0)

def par_check(str)
  par_array = str.split('')
  open = 0
  close = 0
  par_array.each do |p|
    if p == "("
      open += 1
    elsif p == ")"
      close += 1
    end
  end

  if open == close
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
