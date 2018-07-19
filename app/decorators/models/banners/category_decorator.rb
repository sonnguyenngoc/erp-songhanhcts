Erp::Banners::Category.class_eval do  
  # get position for banner type
  def self.get_position_options()
    [
      {text: I18n.t('.album') ,value: self::POSITION_ALBUM},
      {text: I18n.t('.home_slideshow') ,value: self::POSITION_HOME_SLIDESHOW},
      {text: I18n.t('.brand_identity') ,value: self::POSITION_BRAND_IDENTITY},
      {text: I18n.t('.ads_banner') ,value: self::POSITION_ADS_BANNER}
    ]
  end
end