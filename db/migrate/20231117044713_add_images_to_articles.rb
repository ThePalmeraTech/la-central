class AddImagesToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :images, :json
  end
end
