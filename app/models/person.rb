class Person < ApplicationRecord
  #Associations
  has_one :contact_address
  #Attribute api
  attribute  :essay, :text
  attribute :is_active, :boolean
  attribute :is_admin, :boolean
  attribute :user_type, :string
  attribute :secrets, type: :string
  attribute :first_name, type: :string
  attribute :last_name, type: :string
  attribute :expiration_date, type: :date
  attribute :price, :float
  attribute :discount, :float

  validates_each :first_name, :last_name do |record, attr, value|
    record.errors.add(attr, "Must start with capital letter") if value =~ /\A[[:lower:]]/
  end


  #Validations
  #validates :terms_of_service, presence: true, acceptance: {accept: ['yes', 'ok', 'ya'], message: "Please accept terms of service"}
  #validates :contact_address, associated:true
  validates :email, confirmation: true
  #validates :email_confirmation, presence: true
  #validates :domain_url, exclusion: {in: %w(www us jp), message: "%{value} is reserved" }
  #validates :password, exclusion: {in: ->(person){[person.username, person.name]}, message: "should not be same as your username and firstname"}  
  ##validates :size, inclusion: { in: %w(small medium large), message: "Please select one of these sizes. small medium large" }
  #validates :gender, inclusion: {in: %w(male female)} 
  #validates :name, length: {in: 2..6, too_short: "%{count} is less"}, format: {with: /\A[a-zA-Z]+\z/, message: "Only characters are allowed!"}
  #validates :essay, length: {minimum: 20, tokenizer: ->(str) {str.scan(/\w+/)}}
  #validates :age, numericality: {greater_than: 0, less_than: 120, only_integer: true}
  #validates :is_active, inclusion: {in: [true, false]}
  #validates :secrets, absence: true, if: ->(user){user.user_type == "Normal"}
  #validates :email, absence: true, on: :update
  with_options if: :is_admin? do |admin|
    admin.validates :name, presence: true  
  end
  validates :email, presence: true, gmail: true
  validates_with GoodnessValidator, params: [:first_name]
  validates :secrets, presence: true, if: ->(object) { object.is_admin?}
  validate :expiration_date_cannot_be_in_past,
  :discount_should_not_be_greater_than_acutal_value

  private 
    def admin?
      is_admin?
    end  

    def self_name?
      name.starts_with?("ad")
    end
    def expiration_date_cannot_be_in_past
      errors.add(:expiration_date, "expiration date should not be in past") if expiration_date.present? && (expiration_date < Date.today)
    end

    def discount_should_not_be_greater_than_acutal_value
      errors.add(:discount, "Discount should not be greater than actual value") if self.price.to_f < self.discount.to_f

    end

end

