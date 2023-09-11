class AddCategoryIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :category_id, :integer
  end
end
