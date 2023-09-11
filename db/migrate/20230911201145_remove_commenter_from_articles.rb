class RemoveCommenterFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :commenter, :string
  end
end
