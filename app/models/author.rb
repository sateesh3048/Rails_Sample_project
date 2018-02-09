class Author < ApplicationRecord
  belongs_to :comment
  
  def self.store_data
    comment_ids = Comment.pluck(:id)
    1.upto(3000) do |i|
      name = Faker::Name.name
      email = Faker::Internet.email
      age = (20..80).to_a.sample
      comment_id = comment_ids.sample
      Author.create name: name, email: email, comment_id: comment_id
    end
  end
end
