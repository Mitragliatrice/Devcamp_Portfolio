class Portfolio < ApplicationRecord
include Placeholder
after_initialize :set_default
validates_presence_of :title, :body, :main_img, :thumb_img

  def self.angular
      where(subtitle: 'Angular')
  end

  def self.ruby_on_rails
      where(subtitle: "Ruby on Rails")
  end

  after_initialize :set_default
  def set_default
    self.main_img ||= Placeholder.image_gen(height:'600', width:'400')
    self.thumb_img ||= Placeholder.image_gen(height:'350', width:'200')
  end

end
