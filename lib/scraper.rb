require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
doc.css(".heading-financier").text.strip

courses = doc.css(".heading-35-semibold")
courses.each do |course|
    puts course.text.strip
end

p doc.css(".heading-35-semibold")[0]