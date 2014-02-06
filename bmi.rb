#encoding=utf-8
#비만도(BMI) 측정 프로그램

while true
  print "Input your height(cm): "
  height = gets.chomp.to_i
  print "Input your weight(kg): "
  weight = gets.chomp.to_i
  bmi = weight.to_f / ((height.to_f * 0.01) ** 2)

  puts "Your BMI is: #{bmi}"
end
