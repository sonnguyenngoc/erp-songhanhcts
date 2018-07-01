class AddStyleIconToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :style_icon, :string
  end
end
