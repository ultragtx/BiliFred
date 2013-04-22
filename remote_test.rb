#encoding: utf-8
require 'open-uri'
require 'fileutils'

cmd = :"e"

results_limit = 20

rss_url_aff = 'http://www.bilibili.tv/'

rss_url_sufs = {
:d => "rss-1.xml",       # 动画
:m => "rss-3.xml",       # 音乐
:g => "rss-4.xml",       # 游戏
:e => "rss-5.xml",       # 娱乐
:v => "rss-11.xml",      # 专辑
:b => "rss-13.xml"       # 新番
}

unless rss_url_sufs[cmd]
  # set default to :b
  cmd = :b
end

max_time_interval = 60 * 5  # 5 min

storage_dir = File.expand_path('~/Library/Application Support/Alfred 2/Workflow Data/com.longtimenoc.bilifred')

FileUtils.mkdir_p storage_dir # create storage dir

rss_file_path = storage_dir + '/' + rss_url_sufs[cmd]
time_file_path = rss_file_path + '.time'

time_file = File.open(time_file_path, "a+")
time_file.seek(0, IO::SEEK_SET)
time_str = time_file.read
begin
  time_old = Time.parse(time_str)
rescue =>e
  time_old = Time.new(1997)
end

time_now = Time.now

data = nil

# puts time_now - time_old

if time_now - time_old < max_time_interval
  # puts "use local"
  
  rss_file = File.open(rss_file_path, "a+")
  rss_file.seek(0, IO::SEEK_SET)
  data = rss_file.read
  rss_file.close
  # puts data
end

if !data || !(data =~ /^<rss(.*?)^<\/rss>/m) # make sure data is valid rss content
  # puts "use remote"

  rss_url = rss_url_aff + rss_url_sufs[cmd]

  remote = open(URI::encode(rss_url), 'User-Agent' => 'Alfred2')
  data = remote.read
  remote.close
  
  # store new time
  time_file.truncate(0)
  time_file.seek(0, IO::SEEK_SET)
  time_file << time_now
  
  # store new rss
  rss_file = File.open(rss_file_path, "w")
  rss_file.truncate(0)
  rss_file.seek(0, IO::SEEK_SET)
  rss_file << data
  rss_file.flush
  rss_file.close
end

time_file.close

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
  if counter > results_limit
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

if xmlGen.to_s.length == 0
err = <<ERROR
<?xml version="1.0"?>
<items>
	<item uid="1" arg="http://www.bilibili.tv/video/av536726/">
    		<title>Error</title>
    		<subtitle>result length 0</subtitle>
    		<icon>0.png</icon>
    	</item>
</items>
ERROR

end
