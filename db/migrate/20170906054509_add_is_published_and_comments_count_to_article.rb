class AddIsPublishedAndCommentsCountToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :is_published, :boolean, default: false
    add_column :articles, :comments_count, :integer, default: 0
  end
end
