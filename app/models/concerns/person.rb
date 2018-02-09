class Person
  include ActiveModel::Model
  include ActiveModel::Dirty
  attr_accessor :name, :email
  # Validations
  validates :name, presence: true
  validates :email, presence: true#, uniqueness: true
  def initialize(name=nil, email=nil)
    puts "name>>>name"
    puts name
    @name = name
    @email = email
  end
end

