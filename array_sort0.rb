#encoding=utf-8
#2차원 배열의 평균을 구하는 프로그램

def array_mean(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end

  arr_mean = sum.to_f / arr.size
  return arr_mean
end

twodim_array = [
  [1,2,3,4,5,6,7],
  [2,1,5,6,3,7,8,4,2],
  [2,1,4,2,5,6,3,2],
  [1,2,6,2,1,6,3,3],
  [1,5,2,2,7,2,5,0,1,2,4,8,8]
]

twodim_array.each do |array|
  puts array_mean(array)
end
