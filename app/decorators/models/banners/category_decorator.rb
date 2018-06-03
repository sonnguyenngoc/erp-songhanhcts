Erp::Banners::Category.class_eval do  
  # get position for banner type
  def self.get_position_options()
    [
      {text: 'home_slideshow',value: self::POSITION_HOME_SLIDESHOW},
      {text: 'brand_identity',value: self::POSITION_BRAND_IDENTITY}
    ]
  end
end