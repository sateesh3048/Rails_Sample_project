class Client < ApplicationRecord
  #default_scope -> {order(age: :desc)}

  # Associations
  has_one :address
  has_many :orders, -> { order('ordered_date desc')} do 
    def recent_order
      order("created_at desc").first
    end
  end
  
  has_and_belongs_to_many :roles
  attr_accessor :city

  def self.store_data
    1.upto(1000).each do |id|
      name = Faker::Name.name
      age = (25..80).to_a.sample
      email = Faker::Internet.email
      is_active = [true, false].sample
      client = Client.create(name: name, age: age, email: email, is_active: is_active)
    end
  end

  def self.saving_data
    c = Client.first
    c.with_lock  do 
      c.age = 34
      c.save!
    end
  end

  def self.store_roles_data
    role_ids = Role.pluck(:id)
    Client.all.each do |client|
      numbers = (0..role_ids.count).to_a.sample
      role_ids = role_ids.sample(numbers)
      client.role_ids = role_ids
    end
  end
end
