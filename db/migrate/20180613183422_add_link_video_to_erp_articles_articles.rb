class AddLinkVideoToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :link_video, :string
  end
end
