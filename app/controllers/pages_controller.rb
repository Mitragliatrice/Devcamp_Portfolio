class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @portfolios = Portfolio.all
    @page_title = "Colton Mathews | Home"
  end

  def about
     @page_title = "Colton Mathews | About Me"
  end

  def contact
    @page_title = "Colton Mathews | Contact Me"
  end

  def tech_news
    @tweets_coding = SocialTool.twitter_search_coding
    @tweets_ruby = SocialTool.twitter_search_ruby

  end
end
