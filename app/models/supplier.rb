class Supplier < ApplicationRecord
  has_one :account

  #Validations
  validates :name, presence: true

end
