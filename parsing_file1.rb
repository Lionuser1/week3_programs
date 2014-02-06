require 'nokogiri'

10001.upto(10050) do |x|
  file = File.open("#{x}.html","r")
  page = Nokogiri::HTML(file)
  file.close

  title = page.search("title").inner_html

  title_edit = title.split(':')[0]
  puts "#{x}, #{title_edit}"
end
