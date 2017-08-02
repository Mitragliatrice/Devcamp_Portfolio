module PortfoliosHelper
  def image_gen (height:, width:)
     "http://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_img? || img.model.thumb_img?
      img
    elsif type == 'thumb'
      image_gen(height: '350', width: '200')
    else
      image_gen(height: '600', width: '400')
    end
  end

end
