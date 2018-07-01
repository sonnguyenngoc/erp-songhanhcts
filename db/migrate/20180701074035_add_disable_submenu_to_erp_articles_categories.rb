class AddDisableSubmenuToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :disable_submenu, :boolean, default: false
  end
end
