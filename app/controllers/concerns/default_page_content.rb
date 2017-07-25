module DefaultPageContent
extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Colton Mathews"
    @seo_keywords = "Colton Mathews portfolio"
  end
end