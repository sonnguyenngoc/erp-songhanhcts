class AddNoteToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :note, :text
  end
end
