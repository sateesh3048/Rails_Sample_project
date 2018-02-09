class GoodnessValidator < ActiveModel::Validator
  
  def validate(record)
    record.errors[:base] << "This person is danger!" if options[:params].any?{|field| record.send(field) == "Evil"}
  end
end