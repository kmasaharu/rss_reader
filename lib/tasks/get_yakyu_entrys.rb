class Tasks::GetYakyuEntrys
  
  def self.execute
    @sites   = Site.find(:all, :conditions => {:app_id => 4})
    
    @sites.each do |site|
      puts 'rss url = ' + site.rss_url
      feeds = FeedNormalizer::FeedNormalizer.parse(open(site.rss_url), :force_parser => FeedNormalizer::SimpleRssParser)
      if !feeds.nil?
        # まずは古い　Entry　を消す（7日間保持する）
        Entry.destroy_all("created_at <= '#{Time.mktime(Time.now.year, Time.now.month, Time.now.day - 3, 00, 00, 00)}'")
        feeds.entries.map do | feed |  
          if !feed.urls[0].nil?
            puts '--feed url = ' + feed.urls[0]
            @entry = Entry.find(:all, :conditions => { :title => feed.title.force_encoding('utf-8') })
            if @entry.empty?
              @entry = Entry.new(:site_id => site.id, :title => feed.title.force_encoding('utf-8'), :url => feed.urls[0], :public_date => feed.date_published)
              @entry.save
              puts '--OK'
            else
              #puts 'Info exsit title'
            end
          else
            #puts 'Error feed.urls nil'
          end
        end
      end
    end
  end
  
end