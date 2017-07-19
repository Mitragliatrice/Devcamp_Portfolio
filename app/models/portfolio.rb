class Portfolio < ApplicationRecord
after_initialize :set_default
validates_presence_of :title, :body, :main_img, :thumb_img

  def self.angular
      where(subtitle: 'Angular')
  end

  def self.ruby_on_rails
      where(subtitle: "Ruby on Rails")
  end

  after_initialize :set_default
  def set_default (height:, width:)
    self.main_img ||= "http://via.placeholder.com/"height:"x"width:""
    self.thumb_img ||= "http://via.placeholder.com/"height:"x"width:""
  end

end
