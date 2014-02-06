10001.upto(10050) do |x|
  `wget -O #{x}.html http://movie.naver.com/movie/bi/mi/basic.nhn?code=#{x}`
end
