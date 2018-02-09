class Comment < ApplicationRecord
  has_one :author
  belongs_to :article, counter_cache: true

  def self.store_data
    article_ids = Article.pluck(:id)
    1.upto(1000).each do |i|
      description = Faker::Lorem.sentence(3)
      article_id  = article_ids.sample 
      Comment.create! description: description, article_id: article_id
    end
  end
end
