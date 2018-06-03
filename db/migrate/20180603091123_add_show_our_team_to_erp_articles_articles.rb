class AddShowOurTeamToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :show_our_team, :boolean, default: false
  end
end
