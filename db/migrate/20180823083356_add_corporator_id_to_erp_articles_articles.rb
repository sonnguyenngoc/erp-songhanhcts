class AddCorporatorIdToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :corporator_id, :integer
  end
end
