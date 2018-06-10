class AddParentIdToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :parent_id, :integer
  end
end
