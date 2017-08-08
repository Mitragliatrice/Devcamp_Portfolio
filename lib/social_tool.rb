module SocialTool
  def self.twitter_search_rubyonrails
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

        client.search("#rubyonrails", result_type: "recent").take(1).collect do |tweet|
        "<u>#{tweet.user.screen_name}</u> <p>#{tweet.text}</p>"
  end
end
def self.twitter_search_coding
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end
            client.search("#coding", result_type: "recent").take(3).collect do |tweet|
        "<div class='carousel-item card'><u>#{tweet.user.screen_name}</u><p> #{tweet.text}</p></div>"
    end
end


def self.twitter_search_webdev
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
        config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
        config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
        config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

        client.search("#webdev", result_type: "recent").take(3).collect do |tweet|
    "<div class='carousel-item card'><u>#{tweet.user.screen_name}</u><p> #{tweet.text}</p></div>"
    end
  end
end
