require "nokogiri"
require "mechanize"
require "rubygems"
require "open-uri"






agent = Mechanize.new
tc = agent.get('http://www.techcrunch.com/')

# pp tc

# d = Date.today
# tc.links_with(:href => /^gbl_river_headline\,\d/i).each do |par|
#   pp par
# end


tc.root.css('li.river-block').each do |link|
  puts link['id'].to_i

#   if link.css('div.byline a').text.empty?
#     a = link.css('div.byline').text
#     b = link.css('div.byline time').text
#     author = a.gsub(b, "")
#     author = author.gsub("by", "").strip
#   else
#     author = link.css('div.byline a').text
#   end


  # f = link.css('h2.post-title').first
  # puts f
  # # Gets the link
  # url = f.css('a')[0]['href']
  # puts url
  # # Gets the headline
  # headline = f.css('a')[0].text
  # puts headline
#   puts author

end

# tc.root.css('h2.post-title').each do |this|
#   puts this.css('a')[0]['href']
# end

# puts Date.today - 25

# doc = Nokogiri::HTML(open("http://www.techcrunch.com"))
# doc.css('a.read-more').each do |link|
#   puts link
# end


# agent = Mechanize.new
# page = agent.get('http://google.com/')

# test = page.link_with(:text => %r{About}i).click
# pp test

# google_form = page.form('f')
# google_form.q = 'ruby mechanize'
# page = agent.submit(google_form)

# pp tc