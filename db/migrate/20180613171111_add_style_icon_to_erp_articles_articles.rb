class AddStyleIconToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :style_icon, :string
  end
end
