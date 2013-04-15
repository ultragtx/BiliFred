#encoding: utf-8
require 'open-uri'

cmd = "b"

rss_urls = {
:d => "http://www.bilibili.tv/rss-1.xml",       # 动画
:m => "http://www.bilibili.tv/rss-3.xml",       # 音乐
:g => "http://www.bilibili.tv/rss-4.xml",       # 游戏
:e => "http://www.bilibili.tv/rss-5.xml",       # 娱乐
:v => "http://www.bilibili.tv/rss-11.xml",      # 专辑
:b => "http://www.bilibili.tv/rss-13.xml"       # 新番
}

rss_url = rss_urls[cmd.to_sym]

remote = open(URI::encode(rss_url), 'User-Agent' => 'Alfred2')
data = remote.read
remote.close

# puts data

class ItemsXMLGenerator
  
  
  def initialize
    @inner_items_str = ""
    @image_counter = 0
  end
  
  def addItem(params = {})
    uid = params[:uid]
    arg = params[:arg]
    title = params[:title]
    subtitle = params[:subtitle]
    
    itemStr = "\t<item uid=\"#{@image_counter + 1}\" arg=\"#{arg}\">\n\
    \t\t<title>#{title}</title>\n\
    \t\t<subtitle>#{subtitle}</subtitle>\n\
    \t\t<icon>#{@image_counter % 5}.png</icon>\n\
    \t</item>\n"
              
    @inner_items_str << itemStr
    
    @image_counter += 1;
  end
  
  def to_s
    "<?xml version=\"1.0\"?>\n<items>\n#{@inner_items_str}</items>"
  end
  
end

item_exp = /<item>(.*?)<\/item>/m
title_exp = /<title>(.*?)<\/title>/
link_exp = /<link>(.*?)<\/link>/
desc_exp = /<description>(.*?)<\/description>/
date_exp = /<pubDate>(.*?)<\/pubDate>/
cate_exp = /<category>(.*?)<\/category>/
auth_exp = /<author>(.*?)<\/author>/


xmlGen = ItemsXMLGenerator.new

counter = 1

data.scan(item_exp) do |item|
  if counter > 10
    break
  end
  item_str = item.to_s
  item_str =~ title_exp
  title = $1
  item_str =~ link_exp
  link = $1
  item_str =~ desc_exp
  subtitle = $1
  
  params = {}
  params[:uid] = title
  params[:arg] = link
  params[:title] = title
  params[:subtitle] = subtitle
  
  xmlGen.addItem(params)
  
  counter += 1
  
  # puts title
  # puts link
end


puts xmlGen

