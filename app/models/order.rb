class Order < ApplicationRecord
  #Associations
  belongs_to :client

  #scopes
  scope :by_ordered_date, ->(date=Date.today-1.day) {where(ordered_date: date)}

  def self.store_data
    client_ids = Client.pluck(:id)
    1.upto(2000).each do |id|
      client_id = client_ids.sample
      qty = [1,10,25,50,75,100,125,150,175,200,500,1000].sample
      price = qty*([10,25,56,90,99,123,876,1000].sample)
      ordered_date = [Date.today, Date.today+1.day, Date.today-1.day,Date.today-2.days,Date.today-3.days,Date.today-7.days,Date.today-30.days,Date.today-60.days,Date.today-15.days ].sample
      name = Faker::Name.name
      Order.create name: name, qty: qty, price: price, ordered_date: ordered_date, client_id: client_id
    end
  end
end
