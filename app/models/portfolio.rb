class Portfolio < ApplicationRecord
has_many :technologies
accepts_nested_attributes_for :technologies,
                             reject_if: lambda { |attrs| attrs['name'].blank? }

include Placeholder
validates_presence_of :title, :body, :main_img, :thumb_img

  mount_uploader :thumb_img, PortfolioUploader
  mount_uploader :main_img, PortfolioUploader

  def self.angular
      where(subtitle: 'Angular')
  end

  def self.ruby_on_rails
      where(subtitle: "Ruby on Rails")
  end

  def self.by_position
      order("position ASC")
  end

  after_initialize :set_default
  def set_default
    self.main_img ||= Placeholder.image_gen(height:'600', width:'400')
    self.thumb_img ||= Placeholder.image_gen(height:'350', width:'200')
  end



end
