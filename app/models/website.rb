require 'nokogiri'
require 'open-uri'

class Website < ApplicationRecord

  def parseCSS(tag, url)
    temp = ''
    doc = Nokogiri::HTML(open(url))
    doc.css(tag).each do |links|
      temp+= links.content + ' '
    end
    return temp
  end

end
