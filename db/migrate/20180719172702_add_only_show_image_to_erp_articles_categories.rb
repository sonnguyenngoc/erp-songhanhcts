class AddOnlyShowImageToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :only_show_image, :boolean, default: false
  end
end
