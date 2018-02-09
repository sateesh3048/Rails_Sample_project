class Article < ApplicationRecord
 default_scope { published }
#  scope :published, -> {where(is_published: true)}
#  scope :not_published, -> {where(is_published: false)}
# scope :created_before, ->(time) { where("created_at <= ?", time) if time.present?}
  
  scope :published, ->{where(is_published: true)}
  scope :created_before, ->(date){where("created_at <= ?", date)}

  belongs_to :category
  has_many :comments
  has_many :tags


  def self.store_data
    category_ids = Category.pluck(:id)
    1.upto(100).each do |id|
      category_id = category_ids.sample
      title = Faker::Name.name
      description = Faker::Lorem.sentence(3)
      Article.create! title: title, description: description, category_id: category_id
    end
  end

  def self.update_articles
  end
end


  #scopes
##  default_scope -> {published}
#  scope :published, -> {where(is_published: true)}
#  scope :unpublished, -> {where(is_published: false)}
#  scope :published_and_commented, -> {published.where("comments_count >= ?", 0)}
#  scope :created_before, ->(time=Date.today){where("created_at <= ?", time) if time.present? }
