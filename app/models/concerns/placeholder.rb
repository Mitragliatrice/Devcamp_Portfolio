module Placeholder
  extend ActiveSupport::Concern

  def self.image_gen (height:, width:)
     "http://via.placeholder.com/#{height}x#{width}"
  end
end
