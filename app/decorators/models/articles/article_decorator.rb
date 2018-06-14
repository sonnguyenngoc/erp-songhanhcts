Erp::Articles::Article.class_eval do
  
  belongs_to :parent, class_name: "Erp::Articles::Article", optional: true
  has_many :children, class_name: "Erp::Articles::Article", foreign_key: "parent_id"
  
  def parent_name
    parent.present? ? parent.name : ''
  end
  
  # data for dataselect ajax
  def self.dataselect(keyword='', params='')
    query = self.all
    
    if params[:alias].present?
      query = query.joins(:category).where(erp_articles_categories: {alias: params[:alias]})
    end
    
    #if params[:parent_id].present?
    #  query = query.where.not(parent_id: params[:parent_id])
    #end

    if keyword.present?
      keyword = keyword.strip.downcase
      query = query.where('LOWER(name) LIKE ?', "%#{keyword}%")
    end

    query = query.limit(8).map{|article| {value: article.id, text: article.name} }
  end
  
  # get all blogs
  def self.get_all_careers(params)
    query = self.get_active
    if params[:cat_id].present?
        query = query.where(category_id: params[:cat_id])
    else
        query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_CAREER)
    end
    query = query.order('erp_articles_articles.created_at DESC')
  end

  # get newest articles
  def self.newest_careers(limit=nil)
    records = self.get_active.order('erp_articles_articles.created_at DESC')
    records = records.joins(:category).where("erp_articles_categories.alias = ?", Erp::Articles::Category::ALIAS_CAREER).limit(limit)
  end
  
  # get all about us
  def self.get_all_abouts
    query = self.get_active
    query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_ABOUT_US)
    query = query.order('erp_articles_articles.custom_order ASC')
  end
  
  # get all about us
  def self.get_all_identities
    query = self.get_active
    query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_IDENTITY)
    query = query.order('erp_articles_articles.custom_order ASC')
  end
  
  # get all home about us
  def self.get_all_home_abouts
    query = self.get_active
    query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_HOME_ABOUT)
    query = query.order('erp_articles_articles.custom_order ASC')
  end
  
   # get articles by category
  def self.get_articles_by_category(params={})
    query = self.get_active
    if params[:cat_id].present?
      query = query.where(category_id: params[:cat_id])
    end
  end
end