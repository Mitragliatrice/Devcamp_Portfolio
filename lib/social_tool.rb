module SocialTool
    def self.twitter_search_rails
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
        config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
        config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
        config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
      end


      client.search("#rails", result_type: 'recent', lang: "en").take(3).collect do |tweet|
        "#{tweet.user.screen_name}: #{tweet.text}"
      end
    end

    def self.twitter_search_ruby
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
        config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
        config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
        config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
      end


      client.search("#ruby", result_type: 'recent', lang: "en").take(3).collect do |tweet|
        "#{tweet.user.screen_name}: #{tweet.text}"
      end
    end
end