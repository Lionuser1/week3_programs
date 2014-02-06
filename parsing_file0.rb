require 'nokogiri'

file = File.open("10001.html","r")
page = Nokogiri::HTML(file)
file.close

title = page.search("title").inner_html

title_edit = title.split(':')[0]
puts "10001, #{title_edit}"
