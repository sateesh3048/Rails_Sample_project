class Tag < ApplicationRecord
  belongs_to :article

  def self.store_data
    article_ids = Article.pluck(:id)
    1.upto(100) do |i|
      name = Faker::Name.name
      Tag.create! name: name, article_id: article_ids.sample
    end
  end
end
