Erp::Articles::Article.class_eval do
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
end