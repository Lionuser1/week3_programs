#encoding=utf-8
#로또번호 추첨 프로그램 (2)

def draw(num)
  draw_arrays = Array.new
  while draw_arrays.size < num
    draw_arrays << (1..45).to_a.sample(6).sort
  end
    draw_arrays.uniq!

  return draw_arrays
end

def lot(win_array,num)
  draw_result = draw(num)
  draw_result.each do |array|
    if array == win_array.sort
      puts "1st Prize!"
    elsif (win_array & array).size == 5
      puts "2nd Prize!"
    end
  end
end

lot([1,2,3,4,5,6],100000)
