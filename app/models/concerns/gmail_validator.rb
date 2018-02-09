class GmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.present? && value.ends_with?("gmail.com")
      record.errors[attribute] << "Please enter your gmail id"
    end
  end
end