class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @portfolios = Portfolio.all
    @page_title = "Colton Mathews | Home"
    @tweets_rubyonrails = SocialTool.twitter_search_rubyonrails
    @tweets_webdev = SocialTool.twitter_search_webdev
    @tweets_coding = SocialTool.twitter_search_coding
  end

  def about
     @page_title = "Colton Mathews | About Me"
     @skills = Skill.all
  end

def tech_news
  @tweets = SocialTool.twitter_search_rubyonrails
end

  def contact
    @page_title = "Colton Mathews | Contact Me"
  end
end
