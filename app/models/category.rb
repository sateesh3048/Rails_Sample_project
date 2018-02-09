class Category < ApplicationRecord
  has_many :articles

  def self.store_data
    1.upto(10).each do  |id|
      name = Faker::Name.name
      Category.create! name: name
    end
  end
end
