require 'open-uri'
require 'nokogiri'

url = "http://movie.naver.com/movie/bi/mi/basic.nhn?code=10001"
page = Nokogiri::HTML(open(url))

title = page.search("title").inner_html

title_edit = title.split(':')[0]
puts "10001, #{title_edit}"
