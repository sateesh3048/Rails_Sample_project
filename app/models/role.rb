class Role < ApplicationRecord
  #Associations
  has_and_belongs_to_many :clients

  def self.store_data
    ["client", "dm", "pm", "developer", "tester","ba" ].each do |role|
      Role.find_or_create_by name: role
    end
  end
end
