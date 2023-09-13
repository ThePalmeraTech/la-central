class ChangeBodyColumnTypeInArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :body, :rich_text
  end
end
