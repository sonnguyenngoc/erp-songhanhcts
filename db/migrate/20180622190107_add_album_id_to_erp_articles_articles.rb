class AddAlbumIdToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :album_id, :integer
  end
end
