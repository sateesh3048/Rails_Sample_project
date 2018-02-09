class ContactAddress < ApplicationRecord
  belongs_to :person
  
  #Validations
  validates :city, :state, :zip, presence: true
end
