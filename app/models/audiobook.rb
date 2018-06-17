require 'nokogiri'
require 'open-uri'

class Audiobook < ApplicationRecord

  def doc_parse
    doc = Nokogiri::HTML(open("https://www.gutenberg.org/browse/categories/1"))
    nodes = doc.css('a:contains("Embankment at Night")')
    nodes.each do |m|
      html = "https://www.gutenberg.org"
      if !m["href"].include?('author')
       slug = m["href"]
       html += slug
      end
    doc1 = Nokogiri::HTML(open(html))
    audio = doc1.css('td[content*="mpeg"] a[href]')
    str = ""
    audio.each do |node|
      str += "<br> #{node.to_s}"
    end
    return str
    end
  end

end
