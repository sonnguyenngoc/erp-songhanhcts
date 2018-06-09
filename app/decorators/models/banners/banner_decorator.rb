Erp::Banners::Banner.class_eval do
  # get banner with position
  def self.get_brand_identities
    query = self.where(archived: false)
    query = query.joins(:category).where('erp_banners_categories.position = ?', Erp::Banners::Category::POSITION_BRAND_IDENTITY)
    query = query.order('erp_banners_banners.custom_order ASC')
  end
  
  def self.get_ads_banners
    query = self.where(archived: false)
    query = query.joins(:category).where('erp_banners_categories.position = ?', Erp::Banners::Category::POSITION_ADS_BANNER)
    query = query.order('erp_banners_banners.custom_order ASC')
  end
end