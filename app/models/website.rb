require 'nokogiri'
require 'open-uri'

class Website < ApplicationRecord

  def parseCSS(tag, url)
    temp = ''
    doc = Nokogiri::HTML(open(url))
    doc.css(tag).each do |links|
      temp+= links.content.strip + '  '
    end
    # Double whitespace to separate each tag from other tags
    return temp.strip
  end

end
