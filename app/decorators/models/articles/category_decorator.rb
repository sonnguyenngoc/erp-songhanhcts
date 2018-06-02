Erp::Articles::Category.class_eval do
  # class const
  #ALIAS_CAREER = 'career'
  
  # get alias
  def self.get_alias_options()
    [
      {text: I18n.t('blog'),value: self::ALIAS_BLOG},
      {text: I18n.t('career'),value: self::ALIAS_CAREER}
    ]
  end
  
  def self.get_categories_by_alias_career
    query = self.get_active
    query = query.where(alias: Erp::Articles::Category::ALIAS_CAREER)
  end
end