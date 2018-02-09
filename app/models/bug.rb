class Bug < ApplicationRecord
 # enum status: {newed: 0, opened: 1, :assigned: 2, resolved: 3, closed: 4}
  #enum status: {assigned: 1, resolved: 3}
  enum status: [:fresh, :opened, :assigned, :resolved, :closed]

  def self.tracking
    [:fresh, :opened, :assigned, :resolved, :closed]
    {active: 10, inactive: 20}
  end

  def self.define_class_method(arg_name)
    method_name = arg_name.pluralize
    klass = self
    klass.singleton_class.send(:define_method, method_name){
      values = tracking.respond_to?(:each_pair) ? tracking : tracking.each_with_index
      hsh = ActiveSupport::HashWithIndifferentAccess.new
      values.each do |value, index|
        hsh[value] = index
      end
      hsh
    }
  end

  

end


