#encoding=utf-8
#2차원 배열을 평균 순서대로 재배치하는 프로그램

def array_mean(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end

  arr_mean = sum.to_f / arr.size
  return arr_mean
end

def array_sort(arrays)
  arrays.sort! {|arr1,arr2| array_mean(arr1) <=> array_mean(arr2)}
  arrays.each do |array|
    puts array.inspect
  end
end

twodim_array = [
  [1,2,3,4,5,6,7],
  [2,1,5,6,3,7,8,4,2],
  [2,1,4,2,5,6,3,2],
  [1,2,6,2,1,6,3,3],
  [1,5,2,2,7,2,5,0,1,2,4,8,8]
]

array_sort(twodim_array)
