#encoding=utf-8
#화씨-섭씨 변환 프로그램

while true
  print "Input the current temperature in Fahrenheit(F): "
  temp_f = gets.chomp.to_i
  temp_c = (temp_f - 32) * 5.to_f / 9.to_f

  puts "The current temperature in Celsius is: #{temp_c}C."
end
