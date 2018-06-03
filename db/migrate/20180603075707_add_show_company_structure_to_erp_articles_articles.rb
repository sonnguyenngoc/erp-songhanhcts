class AddShowCompanyStructureToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :show_company_structure, :boolean, default: false
  end
end
