class Address < ApplicationRecord
  #Associations
  belongs_to :client

  def self.store_data
    client_ids = Client.pluck(:id)
    1.upto(1000).each do |id|
      client_id = client_ids.sample
      city = Faker::Address.city
      state = Faker::Address.state
      pincode = Faker::Address.zip_code
      street = Faker::Address.street_name
      Address.create! city: city, state:state, pincode: pincode, street: street, client_id: client_id
    end
  end
end
