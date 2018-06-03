class AddShowBrandIdentityToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :show_brand_identity, :boolean, default: false
  end
end
