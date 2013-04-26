#encoding utf8

require 'jcode' if RUBY_VERSION < '1.9'
require "iconv" 
$KCODE='utf8'

class PagesController < ApplicationController
  def index
    @news =[]
    rss("http://news.baidu.com/ns?word=%C8%FD%CD%F8%C8%DA%BA%CF+++%B7%C9%CA%D3+%B5%E7%CA%D3+++&tn=newsrss&sr=0&cl=2&rn=20&ct=0").items.each do |item|
    #rss("http://tech.163.com/special/000944OI/kejitongxin.xml").items.each do |item|
      unless item.title.blank?
        @news << [
                  item.title, #Iconv.iconv("UTF-8//IGNORE","GB2312//IGNORE", item.title).first.gsub(/[\[><\]]/, ''),
                  item.link, #Iconv.iconv("UTF-8//IGNORE","GB2312//IGNORE", item.link),
                  item.pubDate
                 ]
      end
    end
  end
  
  def products
  end 
  
  def servicesupport
  end

  def download
  end
  
  def customerservice
  end

  def fastcat 
  end

  def cssa
  end
 
  def csst
  end

  def programfeatures 
  end

  def overallprogram 
  end

  def recruit
  end
  
  def about
  end

  def team
  end
  
  def scheme
  end
  
  def contact
  end

private
		
  require 'simple-rss'
  require 'open-uri'
  def rss(url)
    rss = SimpleRSS.parse open(url)
  end
end
